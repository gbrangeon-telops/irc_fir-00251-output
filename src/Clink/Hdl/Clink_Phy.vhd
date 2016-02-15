---------------------------------------------------------------------------------------------------
--  Copyright (c) Telops Inc. 2007
--
--  File: CLink_Phy.vhd
--  Use: Physical Layer interface for Cameralink
--  By: Patrick Dubois & Olivier Bourgois
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
use work.all;
use work.tel2000.all;
use work.CLINK_Define.all;

entity CLink_Phy is
   Port (
      --------------------------------
      -- Async Resets
      --------------------------------
      ARESET          : in  std_logic;
      --------------------------------
      -- Ports on CLK_USR domain
      -------------------------------- 
      CLK_USR         : in  std_logic; -- User clock 
      CLINK_CONF      : in  CLinkConfig; -- Configuration Parameters
      --------------------------------
      -- Ports on CLK_CAML domain
      --------------------------------
      CLK_CAML        : in  std_logic;
      AXIS_DATA_MOSI64  :in t_axi4_stream_mosi64;
      AXIS_DATA_MISO  : out t_axi4_stream_miso;
      DESYNC_ERR      : out std_logic;    
      UNDERRUN_ERR    : out std_logic;            
      TC_ERR          : out std_logic;
      --------------------------------
      -- Camera Link Interface Ports
      -- (also CLK_CAML domain)
      --------------------------------

      CAML_X_LVAL     : out std_logic;
      CAML_X_FVAL     : out std_logic;
      CAML_X_DVAL     : out std_logic;
      CAML_X_SPARE    : out std_logic;
      CAML_PORT_C     : out std_logic_vector(7 downto 0);
      CAML_PORT_B     : out std_logic_vector(7 downto 0);
      CAML_PORT_A     : out std_logic_vector(7 downto 0);

      CAML_Y_LVAL     : out std_logic;
      CAML_Y_FVAL     : out std_logic;
      CAML_Y_DVAL     : out std_logic;
      CAML_Y_SPARE    : out std_logic;
      CAML_PORT_F     : out std_logic_vector(7 downto 0);
      CAML_PORT_E     : out std_logic_vector(7 downto 0);
      CAML_PORT_D     : out std_logic_vector(7 downto 0);

      CAML_Z_LVAL     : out std_logic;
      CAML_Z_FVAL     : out std_logic;
      CAML_Z_DVAL     : out std_logic;
      CAML_Z_SPARE    : out std_logic;
      CAML_PORT_H     : out std_logic_vector(7 downto 0);
      CAML_PORT_G     : out std_logic_vector(7 downto 0);

      FRAME_RESET     : in std_logic
	);
end CLink_Phy;

architecture rtl of CLink_Phy is
   

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
   
   -- CameraLink State machine (CAML_CLK domain)
   type   cl_state_t is (CL_Reset, Resync, Wait_For_fifo_filled_enough2, Wait_For_fifo_filled_enough, Send_Data, Wait_For_VB, Wait_For_HB);
   signal cl_state : cl_state_t := CL_Reset;
   
   signal caml_tready : std_logic;         
   signal adj_tvalid : std_logic;
   
   signal LValSize_cnt : integer range 0 to 65535; 
   signal FValSize_cnt : integer range 1 to 65535;   
   signal Head_cnt : integer range 0 to 65535;
   signal LValSize : unsigned(LVALLEN-1 downto 0);
   signal FValSize : unsigned(FVALLEN-1 downto 0);  
   
   signal sof_data : std_logic_vector(63 downto 0);
   signal sof_i : std_logic;
   signal eof_i : std_logic;
   
   signal VB : integer range 0 to 131071; -- Desired Vertical Blanking
   signal LValPause : unsigned(LPAUSELEN-1 downto 0);
   signal HB_cnt    : unsigned(LPAUSELEN-1 downto 0);  -- Horizontal Blanking Counter (4 clocks minimum)
   signal VB_cnt    : integer range 1 to 65535;   -- Vertical Blanking Counter (1 line minimum)
   
   
   signal sreset_caml : std_logic;
   
   
   --signal resync_busy : std_logic;


   
   -- Buffers before retiming (can be used for Chipscope capture)
   signal CAML_X_DVAL_buf : std_logic;
   signal CAML_X_LVAL_buf : std_logic;
   signal CAML_X_LVAL_copy : std_logic;
   signal CAML_X_FVAL_buf : std_logic;
   signal CAML_PORT_A_buf : std_logic_vector(7 downto 0);
   signal CAML_PORT_B_buf : std_logic_vector(7 downto 0);
   signal CAML_PORT_C_buf : std_logic_vector(7 downto 0);  
   
   -- new signals added for supporting FULL CLink Mode    
   signal ADJ_MOSI : t_axi4_stream_mosi64;
   signal ADJ_MISO : t_axi4_stream_miso;
   signal full_en    : std_logic;
   --signal LValSize_adj : unsigned(LValSize'range); -- used for fifo_filled_enough level calcs
   signal CAML_Y_DVAL_buf : std_logic;
   signal CAML_Y_LVAL_buf : std_logic;
   signal CAML_Y_FVAL_buf : std_logic;
   signal CAML_PORT_D_buf : std_logic_vector(7 downto 0);
   signal CAML_PORT_E_buf : std_logic_vector(7 downto 0);
   signal CAML_PORT_F_buf : std_logic_vector(7 downto 0);
   signal CAML_Z_DVAL_buf : std_logic;
   signal CAML_Z_LVAL_buf : std_logic;
   signal CAML_Z_FVAL_buf : std_logic;
   signal CAML_PORT_G_buf : std_logic_vector(7 downto 0);
   signal CAML_PORT_H_buf : std_logic_vector(7 downto 0);    
   
   --signal clink_conf_sync : CLinkConfig; -- resynced to caml clock domain
   signal clink_conf_hold : CLinkConfig; -- latched version, in the caml clock domain
   signal clink_cfg_valid : std_ulogic := '0'; -- a convenient copy of boolean signal CLINK_CONF.Valid
   signal clink_cfg_valid_sync : std_ulogic := '0'; -- resynced to caml clock domain
   signal dual_base_en    : std_logic;   -- we are tired of swapping CLink cables so shoot BASE mode on both!
   signal areset_caml : std_ulogic := '0';
   
   signal resyncing : std_logic;
   signal config_valid : std_logic := '0';
   signal axis_mosi_data_buf : t_axi4_stream_mosi64;
   signal axis_miso_data_buf : t_axi4_stream_miso;
      
begin    
   
   -- instantiate the lane adjuster
   inst_lane_adj : entity axis_lane_adj
   port map(
      CLK         => CLK_CAML,
      ARESET      => areset_caml,
      FULL_BASEn  => full_en,
      LValSize    => LValSize,
      FValSize    => FValSize,
      AXIS_RX_MOSI  => axis_mosi_data_buf,
      AXIS_RX_MISO  => axis_miso_data_buf,
      AXIS_TX_MOSI  => ADJ_MOSI,
      AXIS_TX_MISO  => ADJ_MISO,
      SOF           => sof_i,
      EOF         => eof_i);
   
   -- these assignments were taken out of the fifo generates since they were the same assignments
   -----------LL version
   --ADJ_MISO.AFULL <= '0';      
   --ADJ_MISO.BUSY <= adj_busy;  
   --adj_busy <= caml_busy;-- or (resync_busy and ADJ_MOSI.SOF and ADJ_MOSI.DVAL);
   --adj_dval <= ADJ_MOSI.DVAL and not adj_busy;
   ------------
   
   -----------AXIS VERSION
   ADJ_MISO.TREADY <= caml_tready;
   adj_tvalid <= ADJ_MOSI.TVALID and caml_tready;
   ------------
   ---------------------------------------------
   -- Synchronisation toward CLK_CAML domain
   ---------------------------------------------
   areset_caml <= ARESET or FRAME_RESET;
   
   
   sync_SOFTRESET : sync_reset port map(ARESET => areset_caml, SRESET => sreset_caml, CLK => CLK_CAML);

   

   
      
   clink_cfg_valid <= '1' when CLINK_CONF.Valid = true else '0';
      
   sync_cfg_valid : double_sync 
   port map(
      D => clink_cfg_valid, 
      Q => clink_cfg_valid_sync, 
      RESET => '0', 
      CLK => CLK_CAML);
   
   hold_cfg : process(CLK_CAML)
   begin
      if rising_edge(CLK_CAML) then
         if clink_cfg_valid_sync = '1' then
            clink_conf_hold <= CLINK_CONF;
         end if;
      end if;
   end process;
   

   -- Unused but assigned to not leave floating
   CAML_X_SPARE <= '0'; 
   CAML_Y_SPARE <= '0';
   CAML_Z_SPARE <= '0';
   
   
   ----------------------------------------------
   -- Stall data stream until valid config is receive
   ----------------------------------------------
   wait_for_config : process(CLK_CAML)
   begin
      if rising_edge(CLK_CAML) then
         if (sreset_caml = '1') then
            config_valid <= '0';
         else
            config_valid <= clink_cfg_valid_sync;
         end if;
      end if;
   end process;
   
   --ASYNC PROCESS for Tready/Tvalid assert
   axis_mosi_data_buf.TDATA   <= AXIS_DATA_MOSI64.TDATA;
   axis_mosi_data_buf.TSTRB   <= AXIS_DATA_MOSI64.TSTRB;
   axis_mosi_data_buf.TKEEP   <= AXIS_DATA_MOSI64.TKEEP;
   axis_mosi_data_buf.TLAST   <= AXIS_DATA_MOSI64.TLAST;
   axis_mosi_data_buf.TID     <= AXIS_DATA_MOSI64.TID;  
   axis_mosi_data_buf.TDEST   <= AXIS_DATA_MOSI64.TDEST;
   axis_mosi_data_buf.TUSER   <= AXIS_DATA_MOSI64.TUSER;
   
   axis_mosi_data_buf.TVALID  <= AXIS_DATA_MOSI64.TVALID when config_valid = '1' else '0';
   AXIS_DATA_MISO.TREADY <= axis_miso_data_buf.tready when config_valid = '1' else '0'; -- pourquoi bloquer le flot si la config n'est pas valide? Pourrait-on n'utiliser que axis_miso_data_buf.tready?
   
   

   
--   hold_data_Stream : process(CLK_CAML)
--   begin
--      if rising_edge(CLK_CAML) then
--         if config_valid = '1' then
--            axis_mosi_data_buf <= AXIS_DATA_MOSI64; 
--            AXIS_DATA_MISO <= axis_miso_data_buf;
--         else
--            axis_mosi_data_buf.TVALID  <= '0';
--            axis_mosi_data_buf.TDATA   <= AXIS_DATA_MOSI64.TDATA;
--            axis_mosi_data_buf.TSTRB   <= AXIS_DATA_MOSI64.TSTRB;
--            axis_mosi_data_buf.TKEEP   <= AXIS_DATA_MOSI64.TKEEP;
--            axis_mosi_data_buf.TLAST   <= AXIS_DATA_MOSI64.TLAST;
--            axis_mosi_data_buf.TID     <= AXIS_DATA_MOSI64.TID;  
--            axis_mosi_data_buf.TDEST   <= AXIS_DATA_MOSI64.TDEST;
--            axis_mosi_data_buf.TUSER   <= AXIS_DATA_MOSI64.TUSER;
--            AXIS_DATA_MISO.TREADY <= '0';
--         end if;
--      end if;
--   end process;
   
      
  
   -- CLink mode decoding
   full_en <= '1' when (clink_conf_hold.CLinkMode(CL_FULL_BIT) = '1') else '0';
   --full_en <= '1';
   
   -- support for dual base mode (CLINK base comes out both ports in base mode)
   --dual_base_en <= '1' when (clink_conf_hold.CLinkMode(CL_DUAL_BIT) = '1' and  clink_conf_hold.CLinkMode(CL_FULL_BIT) = '0') else '0';
   dual_base_en <= '0';
   
   -- Always live config
   LValSize   <= clink_conf_hold.LvalSize;
   FValSize   <= clink_conf_hold.FvalSize;
   LValPause  <= clink_conf_hold.LValPause;  
   
   -- CameraLink state machine description
   cl_state_machine : process (CLK_CAML)    
      variable end_of_image : std_logic;   
      variable start_of_image_pending : std_logic;        
   begin  
      if rising_edge(CLK_CAML) then
         if (sreset_caml = '1') then
            CAML_X_LVAL_buf <= '0';
            CAML_X_LVAL_copy <= '0';
            CAML_X_FVAL_buf <= '0'; 
            CAML_X_DVAL_buf <= '0';
            CAML_Y_LVAL_buf <= '0';
            CAML_Y_FVAL_buf <= '0';
            CAML_Y_DVAL_buf <= '0';
            CAML_Z_LVAL_buf <= '0';
            CAML_Z_FVAL_buf <= '0';
            CAML_Z_DVAL_buf <= '0';
            CAML_PORT_A_buf <= (others => '0');
            CAML_PORT_B_buf <= (others => '0');
            CAML_PORT_C_buf <= (others => '0');
            CAML_PORT_D_buf <= (others => '0');
            CAML_PORT_E_buf <= (others => '0');
            CAML_PORT_F_buf <= (others => '0');
            CAML_PORT_G_buf <= (others => '0');
            CAML_PORT_H_buf <= (others => '0');
            sof_data <= (others => '0');
            LValSize_cnt <= 1;
            FValSize_cnt <= 1;
            HB_cnt <= (others => '0');
            VB_cnt <= 1;            
            cl_state <= CL_Reset;                   
            caml_tready <= '0';
            DESYNC_ERR <= '0';   
            UNDERRUN_ERR <= '0';
            TC_ERR <= '0';
         else                          
            VB <= to_integer(LValPause);   
            DESYNC_ERR <= '0'; 
            UNDERRUN_ERR <= '0';               
            TC_ERR <= '0';      
            
            --CAML_PDWN_N <= '1'; -- Now that we have a clock we can enable the Channel Link chips. 
            
            --if ChannelLink_RDY_sync = '1' then
               case cl_state is
                  when CL_Reset =>                     
                     CAML_X_LVAL_buf <= '0';
                     CAML_X_LVAL_copy <= '0';
                     CAML_X_FVAL_buf <= '0';
                     CAML_X_DVAL_buf <= '0';
                     CAML_Y_LVAL_buf <= '0';
                     CAML_Y_FVAL_buf <= '0';
                     CAML_Y_DVAL_buf <= '0';
                     CAML_Z_LVAL_buf <= '0';
                     CAML_Z_FVAL_buf <= '0';
                     CAML_Z_DVAL_buf <= '0';
                     LValSize_cnt <= 1;
                     FValSize_cnt <= 1;
                     HB_cnt <= (others => '0');
                     VB_cnt <= 1;
                     cl_state <= Send_Data;
                     caml_tready <= '0';                     
                     end_of_image := '0';  
                     start_of_image_pending := '1';
                     resyncing <= '0'; 
                  
                  when Resync => 
                     caml_tready<= '1';   
                     if (ADJ_MOSI.TID = "1" and ADJ_MOSI.TVALID = '1') then --if it's the header and data valid it's must be the SOF...
                        cl_state <= Send_Data;
                        caml_tready <= '0';          
                        sof_data <= ADJ_MOSI.TDATA;
                        --resync_busy <= '0';
                     end if;                     
                  
                  when Send_Data =>   
                     if resyncing = '1' then
                        caml_tready <= '0';  
                     else
                        caml_tready <= '1';  
                     end if;
                     --Flush_FIFO_i <= '0';
                     end_of_image := '0';
                     
                     if adj_tvalid = '1' or resyncing = '1' then 
                        CAML_X_DVAL_buf <= '1';
                        CAML_Y_DVAL_buf <= '1';
                        CAML_Z_DVAL_buf <= '1';
                        CAML_X_LVAL_buf <= '1';
                        CAML_X_LVAL_copy <= '1';
                        CAML_Y_LVAL_buf <= '1';
                        CAML_Z_LVAL_buf <= '1';                        
                        if (sof_i = '1' or start_of_image_pending = '1' or resyncing = '1') then                               
                           CAML_X_FVAL_buf <= '1';
                           CAML_Y_FVAL_buf <= '1';
                           if full_en = '1' then
                              CAML_Z_FVAL_buf <= '1';
                           end if;
                           --FValSize_cnt <= 1;
                           LValSize_cnt <= 1;
                           VB_cnt <= 1;
                           
                           --TELOPS CAMERA (TC) 
                           if full_en = '1' then
                              if ((ADJ_MOSI.TDATA(63 downto 48) /= x"4354" and resyncing = '0') or (sof_data(63 downto 48) /= x"4354" and resyncing = '1'))then
                                 TC_ERR <= '1';
                                 assert FALSE report "TC error" severity error;
                              end if;
                           else
                              if ((ADJ_MOSI.TDATA(15 downto 0) /= x"4354" and resyncing = '0') or (sof_data(15 downto 0) /= x"4354" and resyncing = '1'))then
                                 TC_ERR <= '1';
                                 assert FALSE report "TC error" severity error;
                              end if;
                           end if;

                           if (sof_i = '0' and resyncing = '0') then
                              DESYNC_ERR <= '1';
                           end if;    
                           resyncing <= '0';
                           caml_tready <= '1';
                        end if;   
                        
                        -- Manage counters
                        if LValSize_cnt >= to_integer(LValSize) then
                           if FValSize_cnt >= FValSize then  
                              end_of_image := '1';
                              if (eof_i = '0') then
                                 assert FALSE report "Desync error" severity error;    
                                 DESYNC_ERR <= '1';  
                                 resyncing <= '1';
                              end if;
                              FValSize_cnt <= 1;
                              LValSize_cnt <= 1;
                              VB_cnt <= 1;
                              caml_tready <= '0';    
                              cl_state <= Wait_For_VB;
                           else
                              FValSize_cnt <= FValSize_cnt + 1;
                              LValSize_cnt <= 1;
                              HB_cnt <= (others => '0');
                              caml_tready <= '0';
                              cl_state <= Wait_For_HB;
                           end if;                            
                        else
                           LValSize_cnt <= LValSize_cnt + 1;
                        end if;        
                        
                        -- Resync in case of problem
                        if (eof_i = '1' and FValSize_cnt >= FValSize) then
                           if (end_of_image = '0') then
                              assert FALSE report "Desync error" severity error;    
                              DESYNC_ERR <= '1'; 
                              resyncing <= '1';
                           end if;
                           end_of_image := '1';
                        end if;                         
                        
                        if (end_of_image = '1') then
                           FValSize_cnt <= 1;
                           LValSize_cnt <= 1;
                           VB_cnt <= 1;
                           caml_tready <= '0';    
                           cl_state <= Wait_For_VB;                            
                        end if;     
                        
                        start_of_image_pending := '0';                        
                        
                     else
                        CAML_X_DVAL_buf <= '0';
                        CAML_Y_DVAL_buf <= '0';
                        CAML_Z_DVAL_buf <= '0';  
                        if CAML_X_LVAL_copy = '1' then
                           UNDERRUN_ERR <= '1';
                           assert FALSE report "Underrun error" severity WARNING;
                        end if;                        
                        
                     end if;      
                     
                     if full_en = '1' then
                        -- four tap four way interleaved on Bitflow grabber  
                        if (resyncing = '0') then
                           CAML_PORT_G_buf <= ADJ_MOSI.TDATA(7 downto 0);
                           CAML_PORT_H_buf <= ADJ_MOSI.TDATA(15 downto 8);
                           CAML_PORT_E_buf <= ADJ_MOSI.TDATA(23 downto 16);
                           CAML_PORT_F_buf <= ADJ_MOSI.TDATA(31 downto 24);
                           CAML_PORT_C_buf <= ADJ_MOSI.TDATA(39 downto 32);
                           CAML_PORT_D_buf <= ADJ_MOSI.TDATA(47 downto 40);
                           CAML_PORT_A_buf <= ADJ_MOSI.TDATA(55 downto 48);
                           CAML_PORT_B_buf <= ADJ_MOSI.TDATA(63 downto 56); 
                        else
                           CAML_PORT_G_buf <= sof_data(7 downto 0);
                           CAML_PORT_H_buf <= sof_data(15 downto 8);
                           CAML_PORT_E_buf <= sof_data(23 downto 16);
                           CAML_PORT_F_buf <= sof_data(31 downto 24);
                           CAML_PORT_C_buf <= sof_data(39 downto 32);
                           CAML_PORT_D_buf <= sof_data(47 downto 40);
                           CAML_PORT_A_buf <= sof_data(55 downto 48);
                           CAML_PORT_B_buf <= sof_data(63 downto 56);                            
                        end if;
                     else
                        if (resyncing = '0') then
                           CAML_PORT_G_buf <= (others => '0');
                           CAML_PORT_H_buf <= (others => '0');
                           CAML_PORT_E_buf <= (others => '0');
                           CAML_PORT_F_buf <= (others => '0');
                           CAML_PORT_C_buf <= (others => '0');
                           CAML_PORT_D_buf <= (others => '0');
                           CAML_PORT_A_buf <= ADJ_MOSI.TDATA(7 downto 0);
                           CAML_PORT_B_buf <= ADJ_MOSI.TDATA(15 downto 8); 
                        else
                           CAML_PORT_G_buf <= (others => '0');
                           CAML_PORT_H_buf <= (others => '0');
                           CAML_PORT_E_buf <= (others => '0');
                           CAML_PORT_F_buf <= (others => '0');
                           CAML_PORT_C_buf <= (others => '0');
                           CAML_PORT_D_buf <= (others => '0');
                           CAML_PORT_A_buf <= sof_data(7 downto 0);
                           CAML_PORT_B_buf <= sof_data(15 downto 8);                            
                        end if;
                     end if;
                     
                  -- Wait for Horizontal Blank
                  when Wait_For_HB =>
                     caml_tready <= '0';
                     CAML_X_LVAL_buf <= '0'; 
                     CAML_Y_LVAL_buf <= '0';
                     CAML_Z_LVAL_buf <= '0';
                     CAML_X_LVAL_copy <= '0';
                     CAML_X_DVAL_buf <= '0';
                     CAML_Y_DVAL_buf <= '0';
                     CAML_Z_DVAL_buf <= '0';
                     if (HB_cnt >= LValPause) then 
                        cl_state <= Send_Data;
                     else
                        HB_cnt <= HB_cnt + 1;
                     end if;     
                  
                  when Wait_For_VB =>
                     caml_tready <= '0';
                     CAML_X_LVAL_buf <= '0';
                     CAML_X_LVAL_copy <= '0';
                     CAML_Y_LVAL_buf <= '0';
                     CAML_Z_LVAL_buf <= '0';
                     CAML_X_DVAL_buf <= '0';
                     CAML_Y_DVAL_buf <= '0';
                     CAML_Z_DVAL_buf <= '0';
                     CAML_X_FVAL_buf <= '0';
                     CAML_Y_FVAL_buf <= '0';
                     CAML_Z_FVAL_buf <= '0';    
                     start_of_image_pending := '1';
                     LValSize_cnt <= 1;
                     FValSize_cnt <= 1;
                     HB_cnt <= (others => '0');
                     VB_cnt <= 1;                     
                     if VB_cnt >= VB then              
                        if resyncing = '1' then
                           cl_state <= Resync;  
                        else
                           cl_state <= Send_Data;
                        end if;
                     else
                        VB_cnt <= VB_cnt + 1;
                     end if;                     
                  
                  when others =>
                  cl_state <= CL_Reset; 
               end case;
            --end if; -- if ChannelLink_RDY_sync = '1'
         end if;         
      end if; -- if rising_edge(CLK_CAML)

   end process cl_state_machine;
   
   ----------------------------------------------------------------
   -- Retiming flip-flops
   ----------------------------------------------------------------                     

   
   
   -- This process infers the registers at the I/O pads and does any framegrabber specific final 
   -- byte shuffling as required
   pad_registers : process(CLK_CAML)
   variable lane_map : std_logic_vector(1 downto 0);
   begin       
      if rising_edge(CLK_CAML) then     
         
         -- concatenate lane control signals into a vector for case selection
         --lane_map := dual_base_en;
         
         case dual_base_en is

            when '1' =>
               -- unswapped dual base setting (edt board in dual-base mode)                
               CAML_PORT_A <= CAML_PORT_A_buf;            
               CAML_PORT_B <= CAML_PORT_B_buf;
               CAML_PORT_C <= CAML_PORT_C_buf;
               CAML_PORT_D <= CAML_PORT_A_buf;
               CAML_PORT_E <= CAML_PORT_B_buf;
               CAML_PORT_F <= CAML_PORT_C_buf;
               CAML_PORT_G <= CAML_PORT_H_buf;
               CAML_PORT_H <= CAML_PORT_G_buf;
            
            
            when others => -- "00"
               -- default setting (edt in single-base mode)
               CAML_PORT_A <= CAML_PORT_A_buf;            
               CAML_PORT_B <= CAML_PORT_B_buf;
               CAML_PORT_C <= CAML_PORT_C_buf;
               CAML_PORT_D <= CAML_PORT_D_buf;
               CAML_PORT_E <= CAML_PORT_E_buf;
               CAML_PORT_F <= CAML_PORT_F_buf;
               CAML_PORT_G <= CAML_PORT_G_buf;
            CAML_PORT_H <= CAML_PORT_H_buf;
         end case;
         
         -- flow control port registers
         CAML_X_DVAL <= CAML_X_DVAL_buf;   
         CAML_X_LVAL <= CAML_X_LVAL_buf;
         CAML_X_FVAL <= CAML_X_FVAL_buf;
         
         if dual_base_en = '1' then
            CAML_Y_DVAL <= CAML_X_DVAL_buf;   
            CAML_Y_LVAL <= CAML_X_LVAL_buf;
            CAML_Y_FVAL <= CAML_X_FVAL_buf; 
         else
            CAML_Y_DVAL <= CAML_Y_DVAL_buf;   
            CAML_Y_LVAL <= CAML_Y_LVAL_buf;
            CAML_Y_FVAL <= CAML_Y_FVAL_buf; 
         end if;
         CAML_Z_DVAL <= CAML_Z_DVAL_buf;   
         CAML_Z_LVAL <= CAML_Z_LVAL_buf;
         CAML_Z_FVAL <= CAML_Z_FVAL_buf;
         
      end if;
   end process pad_registers;
   
end rtl;
