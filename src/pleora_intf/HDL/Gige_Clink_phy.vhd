---------------------------------------------------------------------------------------------------
--  Copyright (c) Telops Inc. 2007
--
--  File: CLink_Phy.vhd
--  Use: Physical Layer interface for gigabit video with pleora
--  By: Jean-Alexis Boulet
--
--  $Revision$
--  $Author$
--  $LastChangedDate$
--
---------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- translate_off
library unisim;
use unisim.vcomponents.all;       -- use DDR flip flop for outputing CLink clocks
-- translate_on
--use work.all;
use work.tel2000.all;
use work.GIGE_Define.all;

entity GIGE_CLINK_PHY is
   generic(
      LPauseLen : integer := 1;
      FPauseLen : integer := 1
   );
   Port (
      --------------------------------
      -- Async Resets
      --------------------------------
      ARESET          : in  std_logic;
      --------------------------------
      -- Ports on CLK_USR domain
      -------------------------------- 
      CLK_USR         : in  std_logic; -- User clock 
      GIGE_CONF       : in  GIGEConfig; -- Configuration Parameters
      --------------------------------
      -- Ports on CLK_GIGE domain
      --------------------------------
      CLK_GIGE          : in  std_logic;
      AXIS_DATA_MOSI16  : in t_axi4_stream_mosi16_lite;
      AXIS_DATA_MISO    : out t_axi4_stream_miso;
      
      --------------------------------
      -- Error Log
      --------------------------------
      DESYNC_ERR      : out std_logic;              
      TC_ERR          : out std_logic;
      --------------------------------
      -- Camera Link Interface Ports
      -- (also CLK_GIGE domain)
      --------------------------------

      GIGE_X_LVAL     : out std_logic;
      GIGE_X_FVAL     : out std_logic;
      GIGE_X_DVAL     : out std_logic;
      GIGE_X_SPARE    : out std_logic;

      GIGE_PORT_A     : out std_logic_vector(7 downto 0);
      GIGE_PORT_B     : out std_logic_vector(7 downto 0);
      GIGE_PORT_C     : out std_logic_vector(7 downto 0)
      );
end GIGE_CLINK_PHY;

architecture rtl of GIGE_CLINK_PHY is
   

   -- declaring components explicitly eases synthesis file ordering mess!
   component SYNC_RESET is
      port(
         CLK    : in std_logic;
         ARESET : in std_logic;
         SRESET : out std_logic);
   end component;             
   
   component double_sync
      generic(
         INIT_VALUE : BIT := '0');
      port(
         D : in STD_LOGIC;
         Q : out STD_LOGIC;
         RESET : in STD_LOGIC;
         CLK : in STD_LOGIC);
   end component;
   
   -- CameraLink State machine (GIGE_CLK domain)
   type   gige_state_t is (Gige_Reset, Resync, Send_Data, Wait_For_nextline, Wait_For_nextframe);
   signal gige_state : gige_state_t := Gige_Reset;
   
   signal dval,lval,fval : std_logic;
   signal gige_port_a_reg, gige_port_b_reg, gige_port_c_reg :  std_logic_vector(7 downto 0);
   
   signal pix_cnt : unsigned(15 downto 0); -- pixel position on a line: (0 to width -1)
   signal line_cnt : unsigned(15 downto 0); --line position on a frame (0 to heigth-1)
   signal lpause_cnt : unsigned(7 downto 0); -- pixel position on a line: (0 to width -1)
   signal fpause_cnt : unsigned(7 downto 0); --line position on a frame (0 to heigth-1)
   
   signal gige_tready : std_logic;         

   
   signal sreset_GIGE : std_logic;
   signal sreset_usr : std_logic; 

   signal gige_conf_sync : GIGEConfig; -- resynced to GIGE clock domain
   signal gige_conf_valid_sync : std_logic := '0';
   
   signal resyncing : std_logic;   
   signal gige_cfg_hold : GIGEConfig;
   
begin    
   
   
   ---------------------------------------------
   -- Synchronisation toward CLK_GIGE domain
   ---------------------------------------------
   -- 2 reset sources we need to resync so simply merge them together...
   sync_RESET_GIGE : sync_reset port map(ARESET => ARESET, SRESET => sreset_GIGE, CLK => CLK_GIGE);
   
   ---------------------------------------------
   -- Synchronisation toward CLK_USR domain
   --------------------------------------------- 
   sync_RESET_USR : sync_reset port map(ARESET => ARESET, SRESET => sreset_usr, CLK => CLK_USR);
   
   U0 : double_sync port map(D => GIGE_CONF.Valid(0), Q => gige_conf_valid_sync,  RESET => '0', CLK => CLK_GIGE);
         
   -- Unused but assigned to not leave floating
   GIGE_X_SPARE <= '0'; 
   gige_port_c <= (others => '0'); -- for futur use. Set to 0 now since we have 16 bit data
   
   
   ---------------------------------------------
   -- Output asignement
   ---------------------------------------------
   GIGE_PORT_A <= gige_port_a_reg;
   GIGE_PORT_B <= gige_port_b_reg;
   GIGE_PORT_C <= gige_port_c_reg;
   
   GIGE_X_LVAL <= lval;
   GIGE_X_FVAL <= fval;
   GIGE_X_DVAL <= dval;
   
   AXIS_DATA_MISO.TREADY <= gige_tready;
   
   cfg_syn : process (CLK_GIGE)      
   begin  
      if rising_edge(CLK_GIGE) then
         if gige_conf_valid_sync = '1' then
            gige_conf_sync <= GIGE_CONF;
         end if;
      end if;
   end process;
      
   gige_port_c_reg <= (others => '0');
   --------------------------------------------
   -- CameraLink state machine description
   --------------------------------------------
   gige_state_machine : process (CLK_GIGE)      
   begin  
      if rising_edge(CLK_GIGE) then
         if (sreset_GIGE = '1' or gige_conf_sync.Valid(0) = '0') then
            dval <= '0';
            lval <= '0';
            fval <= '0'; 
            gige_port_a_reg <= (others => '0');
            gige_port_b_reg <= (others => '0'); 
            gige_tready <= '0';
        
            gige_state <= Gige_Reset;
            
            pix_cnt <= (others => '0');
            line_cnt <= (others => '0');
            lpause_cnt <= "00000001";
            fpause_cnt <= "00000001";
            
            DESYNC_ERR <= '0';   
            TC_ERR <= '0';
         else                          

            DESYNC_ERR <= '0';               
            TC_ERR <= '0';      
            
               case gige_state is
                  when Gige_Reset =>                     
                     dval <= '0';
                     lval <= '0';
                     fval <= '0'; 
                     gige_port_a_reg <= (others => '0');
                     gige_port_b_reg <= (others => '0');

                 
                     gige_state <= Send_Data;
                     gige_tready <= '1';
                     
                     pix_cnt <= (others => '0');
                     line_cnt <= (others => '0');            
                     lpause_cnt <= "00000001";
                     fpause_cnt <= "00000001";
                     
                     DESYNC_ERR <= '0';   
                     TC_ERR <= '0';
                  
                  when Resync => 
                     --we will wait until we saw a tlast then go to send data
                     GIGE_tready <= '1'; 
                     if (AXIS_DATA_MOSI16.TVALID = '1' and AXIS_DATA_MOSI16.TLAST = '1') then 
                        gige_state <= Send_Data;
                     else 
                        gige_state <= Resync;
                     end if;                     
                  
                  when Send_Data =>
                     
                     fval <= '1'; 
                     lval <= '1';
                     --Check for TC
                     
                     --Send data
                     if (AXIS_DATA_MOSI16.TVALID = '1') then
                        dval <= '1';
                        gige_port_a_reg <= AXIS_DATA_MOSI16.TDATA(7 downto 0);
                        gige_port_b_reg <= AXIS_DATA_MOSI16.TDATA(15 downto 8);
                        
                        --manage line change
                        if(pix_cnt >= gige_conf_sync.frame_width - 1 ) then
                           gige_tready <= '0';
                           pix_cnt <= (others => '0');
                           if(line_cnt >= gige_conf_sync.frame_height - 1 ) then
                              --Check for desynchronisation
                              if(AXIS_DATA_MOSI16.TLAST = '1') then
                                 gige_state <= Wait_For_nextframe;
                              else
                                  --toggle desync error since we are not on tlast
                                 DESYNC_ERR <= '1';
                                 gige_state <= Resync;
                                 report "GIGE DESYNC_ERR" 
                                 severity error;
                              end if;
                              line_cnt <= (others => '0');
                           else
                              gige_state <= Wait_For_nextline;
                              line_cnt <= line_cnt + 1;
                           end if;
                        else
                            gige_tready <= '1';
                           pix_cnt <= pix_cnt + 1;
                           line_cnt <= line_cnt;
                        end if;
                        
                     else
                        gige_tready <= '1';
                        dval <= '0';
                        lval <= lval;                         
                        fval <= fval;
                        gige_port_a_reg <= gige_port_a_reg;
                        gige_port_b_reg <= gige_port_b_reg;
                        pix_cnt <= pix_cnt;
                        line_cnt <= line_cnt;
                     end if;
                     
                  -- Wait for Horizontal Blank
                  when Wait_For_nextline =>
                     
                     dval <= '0';
                     lval <= '0';
                     fval <= '1';
                     gige_port_a_reg <= gige_port_a_reg;
                     gige_port_b_reg <= gige_port_b_reg;
                     if (lpause_cnt >= LPauseLen) then 
                        lpause_cnt <= "00000001";
                        gige_state <= Send_Data;
                        GIGE_tready <= '1';
                     else
                        lpause_cnt <= lpause_cnt + 1;
                        GIGE_tready <= '0';
                     end if;     
                  
                  when  Wait_For_nextframe =>

                     dval <= '0';
                     lval <= '0';
                     fval <= '0';
                     gige_port_a_reg <= gige_port_a_reg;
                     gige_port_b_reg <= gige_port_b_reg;
                     if (fpause_cnt >= fPauseLen) then 
                        fpause_cnt <= "00000001";
                        gige_state <= Send_Data;
                        GIGE_tready <= '1';
                     else
                        fpause_cnt <= fpause_cnt + 1;
                        GIGE_tready <= '0';
                     end if;                    
                  
                  when others =>
                     gige_state <= Gige_Reset; 
               end case;
         end if;         
      end if; -- if rising_edge(CLK_GIGE)

   end process gige_state_machine;

end rtl;
