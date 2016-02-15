-------------------------------------------------------------------------------
--
-- Title       : axis_lane_stim
-- Design      : clink_tb
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Output\src\Clink\Simulations\clink_tb\src\axis_lane_stim.vhd
-- Generated   : Thu Jan 30 13:26:14 2014
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;
use work.GIGE_Define.all;

entity gige_frame_gen is
   generic(
   IMG_WIDTH : integer :=640;
   IMG_HEIGTH : integer := 512; -- do not include hdr
   FPS : integer := 10
   );
   port(
      AXIS_MOSI : out t_axi4_stream_mosi16;
      AXIS_MISO : in t_axi4_stream_miso;
      
      GIGE_CONF : out  GIGEConfig;

      CLK80 : in STD_LOGIC;
      ARESET : in STD_LOGIC
   );
end gige_frame_gen;


architecture rtl of gige_frame_gen is

   component SYNC_RESET is
      port(
         CLK    : in std_logic;
         ARESET : in std_logic;
         SRESET : out std_logic);
   end component;     


--TYPE declaration
type  frame_gen_state_t is (Gige_Reset, wait_to_transmit, transmit_hdr, transmit_img);
signal frame_gen_state : frame_gen_state_t :=  Gige_Reset;

   
--constant declaration
constant CLK_FREQ_HZ : integer := 80000000;
 
--signal declaration 
signal sreset_usr : std_logic := '0';
signal pix_cnt : unsigned(15 downto 0);
signal time_cnt : unsigned (31 downto 0);
signal line_cnt : unsigned (15 downto 0);
signal frame_cnt : unsigned (31 downto 0);

signal axis_data_o : std_logic_vector(15 downto 0);
signal axis_tvalid_o : std_logic;
signal axis_tlast_o : std_logic;
signal axis_tid_o : std_logic_vector(0 downto 0);

signal start_img : std_logic;




--HEADER VALUE
   constant SIGANTURE_T : std_logic_vector(7 downto 0) := x"54"; --T
   constant SIGANTURE_C : std_logic_vector(7 downto 0) := x"43"; --T
   constant XML_MINOR_VER : std_logic_vector(7 downto 0) := x"01"; -- 0
   constant XML_MAJOR_VER : std_logic_vector(7 downto 0) := x"0a"; -- 0
   constant IMG_HDR_LEN : std_logic_vector(7 downto 0) := x"3f"; -- 0
-- constant FVAL_SIZE : integer := IMG_HEIGHT+2;
-- constant LVAL_SIZE_FULL : integer := IMG_WIDTH/4;
-- constant TABLE_SIZE_FULL : integer := fval_size * LVAL_SIZE_FULL;
-- constant LVAL_SIZE : integer := IMG_WIDTH;
-- constant TABLE_SIZE : integer := fval_size * LVAL_SIZE;
-- constant HEADER_SIZE : integer := 12;
-- constant LVAL_PAUSE : integer :=0;
-- constant FRAMEPERCUBE : integer :=1;
-- constant CLINKMODE : integer :=0;
-- constant HEADERVERSION : integer := 0;




begin
-- Assign clock
   ---------------------------------------------
   -- Synchronisation toward CLK_USR domain
   --------------------------------------------- 
   sync_RESET_USR : sync_reset port map(ARESET => ARESET, SRESET => sreset_usr, CLK => CLK80);

   ---------------------------------------------
   -- output assignment
   ---------------------------------------------
   AXIS_MOSI.TDATA   <= axis_data_o;
   AXIS_MOSI.TVALID  <= axis_tvalid_o;
   AXIS_MOSI.TLAST   <= axis_tlast_o;
   AXIS_MOSI.TID     <= axis_tid_o;
   
   AXIS_MOSI.TSTRB <= (others => '1');
   AXIS_MOSI.TKEEP <= (others => '1');
   AXIS_MOSI.TDEST <= (others => '0');
   AXIS_MOSI.TUSER <= (others => '0');
   
   
   GIGE_CONF.Valid <= "0";
   GIGE_CONF.frame_width <= to_unsigned(IMG_WIDTH,GIGE_CONF.frame_width'length);
   GIGE_CONF.frame_height <= to_unsigned(IMG_HEIGTH+2,GIGE_CONF.frame_height'length);
   GIGE_CONF.HeaderSize <= to_unsigned(0,GIGE_CONF.HeaderSize'length);
   GIGE_CONF.HeaderVersion <=  "0000";

   
   frame_gen : process (CLK80)      
   begin  
      if rising_edge(CLK80) then
         if (sreset_usr = '1') then
            pix_cnt <= (others => '0');
            time_cnt <= (others => '0');
            line_cnt <= (others => '0');
            frame_cnt <= (others => '0');
            start_img <= '0';
            frame_gen_state <= Gige_Reset;
            axis_data_o <= (others => '0');
            axis_tvalid_o <= '0';
            axis_tlast_o <= '0';
            axis_tid_o <= "0";
            
         else -- Process img gen

            if(  (time_cnt mod (CLK_FREQ_HZ / FPS )) = 0) then
               time_cnt <= to_unsigned(1,time_cnt'length); -- reset to 1
               start_img <= '1';
            else
               time_cnt <= time_cnt + 1; -- always increment time counter except in reset
               start_img <= '0';               
            end if;
            
            --STATE MACHINE
            if(AXIS_MISO.TREADY = '1') then
               case frame_gen_state is
                  when  Gige_Reset =>
                     axis_data_o <= (others => '0');
                     axis_tvalid_o <= '0';
                     axis_tlast_o <= '0';
                     axis_tid_o <= "1";
                     frame_gen_state <= wait_to_transmit;
                     frame_cnt <= to_unsigned(0,frame_cnt'length);
                  when wait_to_transmit =>

                     if( start_img = '1') then
                        frame_gen_state <= transmit_hdr;
                     else
                        frame_gen_state <= wait_to_transmit;
                     end if;
                     axis_tid_o <= "1";
                     axis_tlast_o <= '0';
                     axis_tvalid_o <= '0';
                  when transmit_hdr =>

                     pix_cnt <= pix_cnt +1;
                     
                     case pix_cnt is
                        when x"0000" => -- correspond to first half of 32 bit hdr
                           axis_data_o <= SIGANTURE_T & SIGANTURE_C;
                        when x"0001" => -- correspond to second half of 32 bit hdr
                           axis_data_o <= XML_MINOR_VER & XML_MAJOR_VER;
                        when x"0002" =>
                           axis_data_o <= IMG_HDR_LEN & x"00";
                        when x"0003" =>
                           axis_data_o <= (others => '0');
                        when x"0004" =>
                           axis_data_o <= std_logic_vector(frame_cnt(15 downto 0));
                        when x"0005" =>
                           axis_data_o <= std_logic_vector(frame_cnt(31 downto 16));
                        when x"0010" =>
                           axis_data_o <= std_logic_vector(to_unsigned(IMG_WIDTH, axis_data_o'length));
                        when x"0011" =>                        
                           axis_data_o <= std_logic_vector(to_unsigned(IMG_HEIGTH, axis_data_o'length));
                        when others =>
                           axis_data_o <= (others => '0');
                     end case;
                     
                     if(pix_cnt = IMG_WIDTH-1) then
                        pix_cnt <= (others => '0');
                        if(line_cnt = 1) then
                           frame_gen_state <= transmit_img;
                           line_cnt <= (others => '0');
                           axis_tid_o <= "0";
                           axis_tlast_o <= '1';
                        else
                           line_cnt <= line_cnt + 1;
                           frame_gen_state <= transmit_hdr;
                           axis_tid_o <= "1";
                           axis_tlast_o <= '0';
                        end if;
                        axis_tvalid_o <= '1';
                     else
                        axis_tid_o <= "1";
                        axis_tlast_o <= '0';
                        axis_tvalid_o <= '1';
                     end if;

                  when transmit_img =>
                     pix_cnt <= pix_cnt +1;
                     --axis_data_o <= std_logic_vector(shift_left(pix_cnt, 3));
                     axis_data_o <= std_logic_vector(pix_cnt);
                     if(pix_cnt = IMG_WIDTH-1) then
                        pix_cnt <= (others => '0');
                        if(line_cnt = IMG_HEIGTH-1) then
                           frame_gen_state <= wait_to_transmit;
                           line_cnt <= (others => '0');
                           axis_tlast_o <= '1';
                           frame_cnt <= frame_cnt+1;
                           axis_tid_o <= "0";
                           axis_tlast_o <= '1';
                           axis_tvalid_o <= '1';
                        else
                           line_cnt <= line_cnt + 1;
                           frame_gen_state <= transmit_img;
                           axis_tid_o <= "0";
                           axis_tlast_o <= '0';
                           axis_tvalid_o <= '1';
                        end if;
                     else
                        axis_tid_o <= "0";
                        axis_tlast_o <= '0';
                        axis_tvalid_o <= '1';
                     end if;
                  when others =>
                     frame_gen_state <= Gige_Reset;
               end case;
            end if;   
         end if;
      end if;
   end process frame_gen;
   
end rtl;
