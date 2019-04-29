---------------------------------------------------------------------------------------------------
--  Copyright (c) Telops Inc. 2007
--
--  File: CLink_Phy.vhd
--  Use: Physical Layer interface for Cameralink
--  By: Jean-Alexis Boulet
--
--  $Revision$
--  $Author$
--  $LastChangedDate$
--
---------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;
use work.CLINK_Define.all;

entity CLink_Phy is
   Port (
      --------------------------------
      -- Async Resets
      --------------------------------
      ARESETN          : in  std_logic;
      --------------------------------
      -- Configuration Parameters
      --------------------------------
      CLINK_CONF      : in  CLinkConfig;
      --------------------------------
      -- Ports on CLK_DataOut domain
      --------------------------------
      CLK_DataOut        : in  std_logic;
      AXIS_DATA_MOSI  : in  t_axi4_stream_mosi64;
      AXIS_DATA_MISO  : out t_axi4_stream_miso;
      UNDERRUN_ERR    : out std_logic;
      TC_ERR          : out std_logic;
      
      --------------------------------
      -- Camera Link Interface Ports
      -- (also CLK_DataOut domain)
      --------------------------------
      
      CLINK_CH0 : out std_logic_vector(27 downto 0);
      CLINK_CH1 : out std_logic_vector(27 downto 0);
      CLINK_CH2 : out std_logic_vector(27 downto 0) 
      );   
end CLink_Phy;

architecture rtl of CLink_Phy is
   
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
   
   component Clink_port_mapper is
      port(
         CH_INPUT : in CLinkChannel;
         CH_OUTPUT      : out std_logic_vector(27 downto 0));
   end component Clink_port_mapper;
   
   -- CameraLink State machine (CAML_CLK domain)
   type   cl_state_t is (CL_Reset, Send_Data_Base_Pix0, Send_Data_Base_Pix1, Send_Data_Base_Pix2,Send_Data_Base_Pix3, Send_Data_Full, Wait_For_HB, Wait_For_VB, Resync);
   signal cl_state : cl_state_t := CL_Reset; 
   
   
   signal HB_cnt    : unsigned(PAUSELEN-1 downto 0);  -- Horizontal Blanking Counter (4 clocks minimum)
   signal VB_cnt    : unsigned(PAUSELEN-1 downto 0);   -- Vertical Blanking Counter (1 line minimum)
   
   attribute keep of HB_cnt : signal is "TRUE";  
   attribute keep of VB_cnt : signal is "TRUE";  
   
   signal sreset_caml, areset_caml: std_logic := '0'; 
   
   signal data_buf   : t_axi4_stream_mosi64;
   
   signal out_of_sync   : std_logic;          
   
   signal clink_conf_hold : CLinkConfig; -- latched version, in the caml clock domain
   signal clink_cfg_valid_sync : std_ulogic := '0'; -- resynced to caml clock domain
   
   
   -- Cameralink Buffers 
   signal CLINK_CH_X :  CLinkChannel;
   signal CLINK_CH_Y :  CLinkChannel;
   signal CLINK_CH_Z :  CLinkChannel; 
   
   signal CLINK_CH0_o :  std_logic_vector(27 downto 0);
   signal CLINK_CH1_o :  std_logic_vector(27 downto 0);
   signal CLINK_CH2_o :  std_logic_vector(27 downto 0);
   
begin
   
   areset_caml <= not ARESETN;
   
   sync_SOFTRESET : sync_reset port map(ARESET => areset_caml, SRESET => sreset_caml, CLK => CLK_DataOut);  
   
   sync_cfg_valid : double_sync
   port map(
      D => CLINK_CONF.Valid,
      Q => clink_cfg_valid_sync,
      RESET => '0',
      CLK => CLK_DataOut); 
   
   
   -- Stall data stream until valid config is receive
   wait_for_config : process(CLK_DataOut)
   begin
      if rising_edge(CLK_DataOut) then
         if (sreset_caml = '1' or clink_cfg_valid_sync = '0') then
            clink_conf_hold.Valid <= '0';
         else
            clink_conf_hold <= CLINK_CONF;
         end if;
      end if;
   end process; 
   
   mapper_ch_X : Clink_port_mapper
   port map(CH_INPUT => CLINK_CH_X, CH_OUTPUT => CLINK_CH0_o);
   CLINK_CH0 <= CLINK_CH0_o;
   
   mapper_ch_Y : Clink_port_mapper
   port map(CH_INPUT => CLINK_CH_Y, CH_OUTPUT => CLINK_CH1_o);
   CLINK_CH1 <= CLINK_CH0_o when clink_conf_hold.CLinkMode = CLINK_DUAL_MODE else CLINK_CH1_o; -- dual mode
   
   mapper_ch_Z : Clink_port_mapper
   port map(CH_INPUT => CLINK_CH_Z, CH_OUTPUT => CLINK_CH2_o); 
   CLINK_CH2 <= CLINK_CH2_o;
   
   error_check : process(CLK_DataOut)
   begin
      if rising_edge(CLK_DataOut) then
         if (sreset_caml = '1') then
            UNDERRUN_ERR <= '0';
            TC_ERR <= '0';
            out_of_sync <= '0';
         else
            -- Underrun error : Happens when TVALID is deasserted during the transmission of a pixel line.
            if (CLINK_CH_X.Dval = '0' and CLINK_CH_X.Lval = '1')  then
               UNDERRUN_ERR <= '1';
               assert TRUE report "Underrun error" severity WARNING;
            end if;   
            
            -- TC error : Happens if a transaction is skipped during the transmission of a frame. (TUSER(0) = SOF and TUSER(1) = EOF)
            if (AXIS_DATA_MOSI.TVALID = '1' and AXIS_DATA_MOSI.TUSER(0) = '1' and AXIS_DATA_MOSI.TDATA(15 downto 0) /= x"4354") then  
               TC_ERR <= '1'; 
               out_of_sync <= '1';
               assert TRUE report "TC error" severity error;
            elsif  cl_state = Resync and out_of_sync = '1'  then
               out_of_sync <= '0';
            end if; 
         end if;
      end if;
   end process; 
   
   
   -- Unused signals
   CLINK_CH_X.Spare <= '0';
   CLINK_CH_Y.Spare <= '0';
   CLINK_CH_Z.Spare <= '0';
   CLINK_CH_Z.Port3 <= (others => '0'); --Unused
   
   -- CameraLink state machine description
   cl_state_machine : process (CLK_DataOut)
   begin
      if rising_edge(CLK_DataOut) then
         if (sreset_caml = '1') then 
            
            cl_state <= CL_Reset;
            
            AXIS_DATA_MISO.TREADY <= '0';  
            
            CLINK_CH_X.Dval <= '0';
            CLINK_CH_X.Lval <= '0';
            CLINK_CH_X.Fval <= '0';
            CLINK_CH_X.Port1 <= (others => '0'); --Pixel 3, Port A
            CLINK_CH_X.Port2 <= (others => '0'); --Pixel 3, Port B
            CLINK_CH_X.Port3 <= (others => '0'); --Pixel 2, Port C
            
            CLINK_CH_Y.Dval <= '0';
            CLINK_CH_Y.Lval <= '0';
            CLINK_CH_Y.Fval <= '0';
            CLINK_CH_Y.Port1 <= (others => '0'); --Pixel 2,Port D
            CLINK_CH_Y.Port2 <= (others => '0'); --Pixel 1,Port E
            CLINK_CH_Y.Port3 <= (others => '0'); --Pixel 1,Port F
            
            CLINK_CH_Z.Dval <= '0';
            CLINK_CH_Z.Lval <= '0';
            CLINK_CH_Z.Fval <= '0'; 
            CLINK_CH_Z.Port1 <= (others => '0'); --Pixel 0,Port G
            CLINK_CH_Z.Port2 <= (others => '0'); --Pixel 0,Port H
            
         else
            case cl_state is
               when CL_Reset =>  
                  
                  CLINK_CH_X.Dval <= '0';
                  CLINK_CH_X.Lval <= '0';
                  CLINK_CH_X.Fval <= '0';
                  
                  CLINK_CH_Y.Dval <= '0';
                  CLINK_CH_Y.Lval <= '0';
                  CLINK_CH_Y.Fval <= '0';
                  
                  CLINK_CH_Z.Dval <= '0';
                  CLINK_CH_Z.Lval <= '0';
                  CLINK_CH_Z.Fval <= '0';
                  
                  
                  --SM management
                  if (clink_conf_hold.Valid = '1') then
                     
                     AXIS_DATA_MISO.TREADY <= '1';
                     HB_cnt <= clink_conf_hold.LValPause;
                     VB_cnt <= clink_conf_hold.FValPause;
                     
                     if  clink_conf_hold.CLinkMode = CLINK_FULL_MODE then      
                        cl_state <=  Send_Data_Full;
                     else
                        cl_state <=  Send_Data_Base_Pix0;
                     end if;
                     
                  else
                     AXIS_DATA_MISO.TREADY <= '0';
                  end if; 
               
               when Send_Data_Full =>   
                  
                  -- Check if out of sync.
                  if (out_of_sync = '1') then  
                     cl_state <=  Resync;
                     -- Transmit data on the 3 channels (4 pixels per transaction).
                  elsif (AXIS_DATA_MOSI.TVALID = '1') then 
                     
                     CLINK_CH_X.Dval <= '1';
                     CLINK_CH_X.Lval <= '1';
                     CLINK_CH_X.Fval <= '1';
                     CLINK_CH_X.Port1 <= AXIS_DATA_MOSI.TDATA(7 downto 0); --Pixel 0, Port A
                     CLINK_CH_X.Port2 <= AXIS_DATA_MOSI.TDATA(15 downto 8); --Pixel 0, Port B
                     CLINK_CH_X.Port3 <= AXIS_DATA_MOSI.TDATA(23 downto 16); --Pixel 1, Port C
                     
                     
                     CLINK_CH_Y.Dval <= '1';
                     CLINK_CH_Y.Lval <= '1';
                     CLINK_CH_Y.Fval <= '1';
                     CLINK_CH_Y.Port1 <= AXIS_DATA_MOSI.TDATA(31 downto 24); --Pixel 1,Port D
                     CLINK_CH_Y.Port2 <= AXIS_DATA_MOSI.TDATA(39 downto 32); --Pixel 2,Port E
                     CLINK_CH_Y.Port3 <= AXIS_DATA_MOSI.TDATA(47 downto 40); --Pixel 2,Port F
                     
                     CLINK_CH_Z.Dval <= '1';
                     CLINK_CH_Z.Lval <= '1';
                     CLINK_CH_Z.Fval <= '1';                    

                     CLINK_CH_Z.Port1 <= AXIS_DATA_MOSI.TDATA(55 downto 48); --Pixel 3,Port G
                     CLINK_CH_Z.Port2 <= AXIS_DATA_MOSI.TDATA(63 downto 56); --Pixel 3,Port H
                     
                     --Check for EOF  
                     if  AXIS_DATA_MOSI.TUSER(1) = '1' and AXIS_DATA_MOSI.TLAST = '1' and (clink_conf_hold.FValPause > 0)  then                       
                        AXIS_DATA_MISO.TREADY <= '0';
                        cl_state <=  Wait_For_VB; 
                        
                        --Check for EOL
                     elsif AXIS_DATA_MOSI.TUSER(1) = '0' and AXIS_DATA_MOSI.TLAST = '1' and (clink_conf_hold.LValPause > 0) then    
                        AXIS_DATA_MISO.TREADY <= '0';
                        cl_state <= Wait_For_HB;
                        
                        --Continue to transmit data   
                     else     
                        cl_state <=  Send_Data_Full;                     
                     end if; 
                     
                     -- Wait for valid data.
                  else
                     AXIS_DATA_MISO.TREADY <= '1';
                     
                     CLINK_CH_X.Dval <= '0';
                     CLINK_CH_Y.Dval <= '0';
                     CLINK_CH_Z.Dval <= '0'; 
                     
                     cl_state <= Send_Data_Full;
                     
                  end if;
               
               when Send_Data_Base_Pix0 =>  
                  
                  -- Check if out of sync.
                  if (out_of_sync = '1') then  
                     cl_state <=  Resync; 
                     
                  elsif (AXIS_DATA_MOSI.TVALID = '1') then   
                     
                     AXIS_DATA_MISO.TREADY <= '0';
                     -- Register incoming data 
                     data_buf  <= AXIS_DATA_MOSI;
                     
                     data_buf.TDATA(47 downto 32) <= AXIS_DATA_MOSI.TDATA(63 downto 48); --Pixel 3
                     data_buf.TDATA(31 downto 16) <= AXIS_DATA_MOSI.TDATA(47 downto 32); --Pixel 2
                     data_buf.TDATA(15 downto 0) <= AXIS_DATA_MOSI.TDATA(31 downto 16); --Pixel 1 
                     
                     CLINK_CH_X.Dval <= '1';
                     CLINK_CH_X.Lval <= '1';
                     CLINK_CH_X.Fval <= '1';
                     CLINK_CH_X.Port1 <= AXIS_DATA_MOSI.TDATA(7 downto 0); --Port A
                     CLINK_CH_X.Port2 <= AXIS_DATA_MOSI.TDATA(15 downto 8); --Port B
                     CLINK_CH_X.Port3 <= (others => '0'); --Port C
                     
                     cl_state <= Send_Data_Base_Pix1;  
                     
                     --Wait for valid data   
                  else 
                     AXIS_DATA_MISO.TREADY <= '1';
                     CLINK_CH_X.Dval <= '0';
                     cl_state <= Send_Data_Base_Pix0;
                     
                  end if;
               
               when Send_Data_Base_Pix1 => 
                  
                  AXIS_DATA_MISO.TREADY <= '0';
                  CLINK_CH_X.Port1 <= data_buf.TDATA(7 downto 0); --Port A
                  CLINK_CH_X.Port2 <= data_buf.TDATA(15 downto 8); --Port B
                  cl_state <= Send_Data_Base_Pix2; 
               
               when Send_Data_Base_Pix2 =>   
                  
                  AXIS_DATA_MISO.TREADY <= '0';
                  CLINK_CH_X.Port1 <= data_buf.TDATA(23 downto 16); --Port A
                  CLINK_CH_X.Port2 <= data_buf.TDATA(31 downto 24); --Port B
                  cl_state <= Send_Data_Base_Pix3;               
               
               when Send_Data_Base_Pix3 => 
                  
                  CLINK_CH_X.Port1 <= data_buf.TDATA(39 downto 32); --Port A
                  CLINK_CH_X.Port2 <= data_buf.TDATA(47 downto 40); --Port B
                  
                  --Check fo EOF 
                  if  data_buf.TUSER(1) = '1' and data_buf.TLAST= '1' and (clink_conf_hold.FValPause > 0)  then 
                     AXIS_DATA_MISO.TREADY <= '0';
                     cl_state <=  Wait_For_VB; 
                     
                     --Check fo EOL   
                  elsif data_buf.TUSER(1) = '0' and data_buf.TLAST = '1' and (clink_conf_hold.LValPause > 0) then
                     AXIS_DATA_MISO.TREADY <= '0';  
                     cl_state <= Wait_For_HB;
                     
                     --Continue to transmit data   
                  else  
                     AXIS_DATA_MISO.TREADY <= '1';
                     cl_state <=  Send_Data_Base_Pix0;
                  end if;
               
               when Wait_For_HB =>  
                  
                  CLINK_CH_X.Dval <= '0';
                  CLINK_CH_Y.Dval <= '0';
                  CLINK_CH_Z.Dval <= '0';
                  
                  CLINK_CH_X.Lval <= '0';
                  CLINK_CH_Y.Lval <= '0';  
                  CLINK_CH_Z.Lval <= '0';
                  
                  if (HB_cnt = to_unsigned(1,HB_cnt'length)) then
                     HB_cnt <= clink_conf_hold.LValPause;
                     
                     --Return to send data
                     AXIS_DATA_MISO.TREADY <= '1'; 
                     if  clink_conf_hold.CLinkMode = CLINK_FULL_MODE then 
                        cl_state <=  Send_Data_Full;                  
                     else
                        cl_state <=  Send_Data_Base_Pix0;
                     end if;
                  else
                     HB_cnt <= HB_cnt - 1;
                     AXIS_DATA_MISO.TREADY <= '0';
                     cl_state <=  Wait_For_HB;
                  end if; 
               
               when Wait_For_VB => 
                  
                  CLINK_CH_X.Dval <= '0';
                  CLINK_CH_X.Lval <= '0';
                  CLINK_CH_X.Fval <= '0';
                  CLINK_CH_Y.Dval <= '0';
                  CLINK_CH_Y.Lval <= '0';
                  CLINK_CH_Y.Fval <= '0';
                  CLINK_CH_Z.Dval <= '0';
                  CLINK_CH_Z.Lval <= '0';
                  CLINK_CH_Z.Fval <= '0';
                  
                  if (VB_cnt = to_unsigned(1,VB_cnt'length)) then
                     VB_cnt <= clink_conf_hold.FValPause;
                     
                     --Return to send data
                     AXIS_DATA_MISO.TREADY <= '1';
                     if  clink_conf_hold.CLinkMode = CLINK_FULL_MODE then
                        cl_state <=  Send_Data_Full;                  
                     else
                        cl_state <=  Send_Data_Base_Pix0;
                     end if; 
                     
                  else
                     AXIS_DATA_MISO.TREADY <= '0';
                     VB_cnt <= VB_cnt - 1; 
                     cl_state <=  Wait_For_VB;
                  end if;
               
               when Resync =>
                  AXIS_DATA_MISO.TREADY <= '1';         
                  
                  CLINK_CH_X.Dval <= '0';
                  CLINK_CH_X.Lval <= '0';
                  CLINK_CH_X.Fval <= '0';
                  CLINK_CH_Y.Dval <= '0';
                  CLINK_CH_Y.Lval <= '0';
                  CLINK_CH_Y.Fval <= '0';
                  CLINK_CH_Z.Dval <= '0';
                  CLINK_CH_Z.Lval <= '0';
                  CLINK_CH_Z.Fval <= '0';
                  
                  if (AXIS_DATA_MOSI.TUSER(1) = '1' and AXIS_DATA_MOSI.TVALID = '1') then 
                     AXIS_DATA_MISO.TREADY <= '0';
                     cl_state <=  CL_Reset; 
                     
                  end if;
               
               when others =>
               cl_state <= CL_Reset;
            end case;
            
         end if; --sreset_caml
      end if; --rising_edge
      
   end process cl_state_machine;
   
end rtl;
