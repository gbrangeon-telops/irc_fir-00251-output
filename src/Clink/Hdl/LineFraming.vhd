-------------------------------------------------------------------------------
--
-- Title       : LineFraming
-- Design      : fir_00251_output
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Output\src\Line_Buffer\Hdl\LineFraming.vhd
-- Generated   : Thu Jan 23 15:55:07 2014
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
use IEEE.numeric_std.all;

library work;
use work.tel2000.all;


entity LineFraming is
	 port(
      S_DATAFRAME_MOSI : in t_axi4_stream_mosi32;
      S_DATAFRAME_MISO : out t_axi4_stream_miso;

      S_DATALINE_MOSI : out t_axi4_stream_mosi32;
      S_DATALINE_MISO : in t_axi4_stream_miso;
      
      WIDTH : in STD_LOGIC_VECTOR(15 downto 0);
      HEIGHT : in STD_LOGIC_VECTOR(15 downto 0);
      OUT_OF_SYNC : out STD_LOGIC;
      
      ARESETN : in STD_LOGIC;
      CLK160 : in STD_LOGIC
);
end LineFraming;


architecture LineFraming of LineFraming is

--component declaration
   component double_sync
      generic(
         INIT_VALUE : BIT := '0');
      port(
         D : in STD_LOGIC;
         Q : out STD_LOGIC;
         RESET : in STD_LOGIC;
         CLK : in STD_LOGIC);
   end component;
   
   component double_sync_vector is
      port(
         D : in std_logic_vector ;
         Q : out std_logic_vector;
         CLK : in STD_LOGIC
         );
   end component;
   
   component sync_resetn is
      port(
         ARESETN : in STD_LOGIC;
         SRESETN : out STD_LOGIC;
         CLK : in STD_LOGIC
         );
   end component;

--signal declaration 
signal width_i : unsigned(15 downto 0);
signal width_slv_i : std_logic_vector(15 downto 0) := (others =>'0');
signal height_i :  unsigned(15 downto 0);
signal height_slv_i :  std_logic_vector(15 downto 0);
signal out_of_sync_o : std_logic;
signal pixel_cnt  : unsigned( 31 downto 0):= (others =>'0');
signal line_cnt  : unsigned( 15 downto 0);
signal sresetn : std_logic;
signal stream_enable : std_logic;

signal rx_frame_miso : t_axi4_stream_miso;
signal rx_frame_hold : t_axi4_stream_mosi32;
signal tx_line_mosi : t_axi4_stream_mosi32;
   
begin

double_sync_width : double_sync_vector
port map(D => WIDTH, Q => width_slv_i,  CLK => CLK160);

double_sync_height : double_sync_vector
port map(D => HEIGHT, Q => height_slv_i,  CLK => CLK160);

sreset_0 : sync_resetn
port map(ARESETN => ARESETN, SRESETN => sresetn, CLK => CLK160);
    
width_i <=  unsigned(width_slv_i  );
height_i <=  unsigned(height_slv_i );

OUT_OF_SYNC <= out_of_sync_o;
   

-- Stream Assignment    
S_DATAFRAME_MISO <= rx_frame_miso;
S_DATALINE_MOSI <= tx_line_mosi;
    
-- Count Pixel
error_check : process(CLK160) is
begin
   if(rising_edge(CLK160)) then
      if(sresetn = '0') then
         out_of_sync_o <= '0';
      else
      --Check for TC and check for tlast synch
          if( (line_cnt = 0 and pixel_cnt = 0 and S_DATAFRAME_MOSI.TVALID = '1' and S_DATAFRAME_MOSI.TDATA(15 downto 0) /= x"4354") OR 
            ( (line_cnt = (height_i - 1)) and (pixel_cnt = (width_i - 2) ) and S_DATAFRAME_MOSI.TVALID = '1' and S_DATAFRAME_MOSI.TLAST = '0' )) then
              out_of_sync_o <= '1'; 
          end if;
      end if;
   end if;
end process error_check;

---- Count Pixel and line
counter : process(CLK160) is
begin
   if(rising_edge(CLK160)) then
      if(sresetn = '0') then
         pixel_cnt <= to_unsigned(0,32);
         line_cnt  <= (others => '0');
      else
         if(S_DATAFRAME_MOSI.TVALID = '1' and rx_frame_miso.TREADY = '1') then
            if(pixel_cnt = (width_i-2) ) then
               pixel_cnt <= to_unsigned(0,32);
               if (line_cnt = height_i-1)  then
                  line_cnt <= (others => '0');
               else
                  line_cnt <= line_cnt + 1;
               end if;
            else
               pixel_cnt <= pixel_cnt + 2; -- 2 pixel per transaction   
            end if;
         else -- the pixel is not valid
            
         end if;
      end if;
   end if;
end process counter;

-- Stream enable
strm_enable : process(CLK160) is
begin
   if rising_edge(CLK160) then
      if(sresetn = '0') then
         stream_enable <= '0';
      else
         if (height_slv_i /= X"0000") and (width_slv_i /= X"0000") then
            stream_enable <= '1';
         else
            stream_enable <= '0';
         end if;
      end if;
   end if;
end process;



Register_stream : process(CLK160)
   begin       
      if rising_edge(CLK160) then
         if sresetn = '0' or stream_enable = '0' then          
            rx_frame_miso.TREADY <= '0';
            tx_line_mosi.TVALID <= '0';
            tx_line_mosi.TDATA <= (others => '0');
            tx_line_mosi.TKEEP <= (others => '0');
            tx_line_mosi.TSTRB <= (others => '0');
            tx_line_mosi.TID <= (others => '0');
            tx_line_mosi.TUSER <= (others => '0');
            tx_line_mosi.TLAST <= '0';
            rx_frame_hold.TVALID <= '0';
            rx_frame_hold.TDATA <= (others => '0');
            rx_frame_hold.TKEEP <= (others => '0');
            rx_frame_hold.TSTRB <= (others => '0');
            rx_frame_hold.TID <= (others => '0');
            rx_frame_hold.TUSER <= (others => '0');
            rx_frame_hold.TLAST <= '0';
 
         else            
            rx_frame_miso <= S_DATALINE_MISO;
            
            if rx_frame_miso.TREADY = '1' then
               rx_frame_hold <= S_DATAFRAME_MOSI;
               if( (pixel_cnt = (width_i-2)) and S_DATAFRAME_MOSI.TVALID = '1') then
                rx_frame_hold.TLAST <= '1';
               else 
                rx_frame_hold.TLAST <= '0';  
               end if;
            end if;
            
            if S_DATALINE_MISO.TREADY = '1' then
               tx_line_mosi <= S_DATAFRAME_MOSI;
               
               if( (pixel_cnt = (width_i-2)) and S_DATAFRAME_MOSI.TVALID = '1') then
                tx_line_mosi.TLAST <= '1';
               else 
                tx_line_mosi.TLAST <= '0';  
               end if;
               
            end if;
            
            if S_DATALINE_MISO.TREADY = '1' and rx_frame_miso.TREADY = '0' then
               tx_line_mosi <= rx_frame_hold;
            end if;            
                        
         end if;
      end if;
   end process;


end LineFraming;
