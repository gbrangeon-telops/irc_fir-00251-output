------------------------------------------------------------------
--!   @file SDI_ctrl.vhd
--!   @brief Control for SDI.
--!   @details This file control and monitor the SDI
--!
--!   $Rev: 19950 $
--!   $Author: odionne $
--!   $Date: 2017-01-21 14:52:56 -0500 (sam., 21 janv. 2017) $
--!   $Id: fb_ctrl.vhd 19950 2017-01-21 19:52:56Z odionne $
--!   $URL: http://einstein/svn/firmware/FIR-00251-Output/trunk/src/Clink/Hdl/clink_ctrl.vhd $
------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;
use work.FB_Define.all;
use work.calib_define.all;

entity SDI_ctrl is
   port (
      CLK            : in  std_logic;
      CLK_DATA       : in  std_logic;
      ARESET         : in  std_logic;
      
      -- AXIL signals
      AXI4_LITE_MOSI : in t_axi4_lite_mosi;
      AXI4_LITE_MISO : out t_axi4_lite_miso;
      
      SDI_ERR        : in std_logic_vector(31 downto 0);
      
      -- Output signals
      Output_Img_Size   : out std_logic_vector(31 downto 0);
      
      Scaler_Img_Width  : out std_logic_vector(15 downto 0);
      Scaler_Img_Size   : out std_logic_vector(31 downto 0);
      
      SDI_Img_v_Start   : out std_logic_vector(15 downto 0);
      SDI_Img_v_Stop    : out std_logic_vector(15 downto 0);
      SDI_Img_h_Start   : out std_logic_vector(15 downto 0);
      SDI_Img_h_Stop    : out std_logic_vector(15 downto 0);
      SDI_Img_x_Flip    : out std_logic;
      SDI_Img_y_Flip    : out std_logic;
      
      SDI_720pn_1080p   : out std_logic;
      
      SDI_ResetN        : out std_logic;
      
      CMAP_PARAM		: out lut_param_type;
      
      FB_READ_PAUSE		: out std_logic;
      
      FB_CONF           : out FB_Config;
      
      VIDEO_CONFIG                : out video_config_type
      
   );
end SDI_ctrl;

architecture implementation of SDI_ctrl is
   attribute keep : string;

   component sync_reset
      port(
         ARESET   : in std_logic;
         SRESET   : out std_logic;
         CLK      : in std_logic
      );
   end component; 
   
   component double_sync
      generic(
         INIT_VALUE : bit := '0'
      );
      port(
         D : in STD_LOGIC;
         Q : out STD_LOGIC := '0';
         RESET : in STD_LOGIC;
         CLK : in STD_LOGIC
      );
   end component;
   
   
   
   constant C_S_AXI_DATA_WIDTH : integer := 32;
   constant C_S_AXI_ADDR_WIDTH : integer := 32;

   signal sreset         : std_logic;

   --! User Output Register Declarations
   signal fb_cfg : FB_Config;
    
   -- AXI4LITE signals
   signal axi_awaddr	  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal axi_awready  : std_logic;
   signal axi_wready	  : std_logic;
   signal axi_bresp	  : std_logic_vector(1 downto 0);
   signal axi_bvalid	  : std_logic;
   signal axi_araddr	  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
   signal axi_arready  : std_logic;
   signal axi_rdata	  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal axi_rresp	  : std_logic_vector(1 downto 0);
   signal axi_rvalid	  : std_logic;
   signal axi_wstrb    : std_logic_vector(3 downto 0);
   
   signal slv_reg_rden : std_logic;
   signal slv_reg_wren : std_logic;
   signal reg_data_out : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   
   signal output_img_size_i   : std_logic_vector(31 downto 0);
   signal scaler_img_width_i   : std_logic_vector(15 downto 0);
   signal scaler_img_size_i    : std_logic_vector(31 downto 0);

   signal sdi_img_v_start_i   : std_logic_vector(15 downto 0);
   signal sdi_img_v_stop_i    : std_logic_vector(15 downto 0);
   signal sdi_img_h_start_i   : std_logic_vector(15 downto 0);
   signal sdi_img_h_stop_i    : std_logic_vector(15 downto 0);
   signal sdi_img_x_flip_i    : std_logic;
   signal sdi_img_y_flip_i    : std_logic;
   
   signal sdi_720pn_1080p_i    : std_logic;

   signal sdi_pause_resetn_i       : std_logic_vector(1 downto 0);

   signal cmap_param_i		: lut_param_type;

   attribute keep of output_img_size_i : signal is "TRUE";
   
   attribute keep of sdi_img_v_start_i : signal is "TRUE";
   attribute keep of sdi_img_v_stop_i : signal is "TRUE";
   attribute keep of sdi_img_h_start_i : signal is "TRUE";
   attribute keep of sdi_img_h_stop_i : signal is "TRUE";
   attribute keep of sdi_img_x_flip_i : signal is "TRUE";
   attribute keep of sdi_img_y_flip_i : signal is "TRUE";

   attribute keep of fb_cfg : signal is "TRUE";

   attribute keep of sdi_pause_resetn_i : signal is "TRUE";
   
   signal reset_err_i          : std_logic;
   signal error_latch          : std_logic_vector(31 downto 0);
   
   signal mb_cfg_done                  : std_logic := '0';     -- to have a rising edge at start-up
   signal mb_cfg_done_sync             : std_logic;
   signal mb_cfg_done_sync_last        : std_logic;
   signal video_config_i               : video_config_type := ("00", x"05", x"09", '0'); 
   
begin
   
   inst_sync_reset : sync_reset port map(ARESET => ARESET, SRESET => sreset, CLK => CLK);

   -- I/O Connections assignments
   AXI4_LITE_MISO.AWREADY  <= axi_awready;
   AXI4_LITE_MISO.WREADY   <= axi_wready;
   AXI4_LITE_MISO.BRESP	   <= axi_bresp;
   AXI4_LITE_MISO.BVALID   <= axi_bvalid;
   AXI4_LITE_MISO.ARREADY  <= axi_arready;
   AXI4_LITE_MISO.RDATA	   <= axi_rdata;
   AXI4_LITE_MISO.RRESP	   <= axi_rresp;
   AXI4_LITE_MISO.RVALID   <= axi_rvalid;
   
         
   FB_CONF <= fb_cfg;
   
   Output_Img_Size   <= output_img_size_i;
   Scaler_Img_Width   <= scaler_img_width_i;
   Scaler_Img_Size    <= scaler_img_size_i;
   
   SDI_Img_v_Start   <= sdi_img_v_start_i;
   SDI_Img_v_Stop    <= sdi_img_v_stop_i;
   SDI_Img_h_Start   <= sdi_img_h_start_i;
   SDI_Img_h_Stop    <= sdi_img_h_stop_i;
   SDI_Img_x_Flip    <= sdi_img_x_flip_i;
   SDI_Img_y_Flip    <= sdi_img_y_flip_i;
   
   sdi_720pn_1080p    <= sdi_720pn_1080p_i;

   SDI_ResetN           <= sdi_pause_resetn_i(0);
   FB_READ_PAUSE        <= sdi_pause_resetn_i(1);

   CMAP_PARAM <= cmap_param_i;
   
   
  sync_mb_cfg : double_sync port map(D => mb_cfg_done, Q => mb_cfg_done_sync, RESET => '0', CLK => CLK_DATA); 

      
   U1: process(CLK_DATA)
   begin
      if rising_edge(CLK_DATA) then
         
         mb_cfg_done_sync_last <= mb_cfg_done_sync;
         
         -- These outputs are updated everytime (when clk domain crossing is done)
         if mb_cfg_done_sync = '1' and mb_cfg_done_sync_last = '0' then
            
            VIDEO_CONFIG <= video_config_i; 
            
         end if;
      end if;
   end process;
   
   
   
   ----------------------------------------------------------------------------
   -- AXI WR : contrôle du flow 
   ---------------------------------------------------------------------------- 
   -- (pour l'instant transaction se fait à au max 1 CLK sur 2 
   U2: process (CLK)
   begin
      if rising_edge(CLK) then 
         if sreset = '1' then
            axi_awready <= '0'; 
            axi_wready <= '0';
         else
            
            if (axi_awready = '0' and AXI4_LITE_MOSI.AWVALID = '1' and AXI4_LITE_MOSI.WVALID = '1') then
               axi_awready <= '1';
               axi_awaddr <= AXI4_LITE_MOSI.AWADDR;
            else
               axi_awready <= '0';
            end if;
            
            if (axi_wready = '0' and AXI4_LITE_MOSI.WVALID = '1' and AXI4_LITE_MOSI.AWVALID = '1') then
               axi_wready <= '1';
            else
               axi_wready <= '0';               
            end if;              
            
         end if;
      end if;
   end process;   
   slv_reg_wren <= axi_wready and AXI4_LITE_MOSI.WVALID and axi_awready and AXI4_LITE_MOSI.AWVALID ;
   axi_wstrb <= AXI4_LITE_MOSI.WSTRB; 
   
   ----------------------------------------------------------------------------
   -- AXI WR : reception configuration
   ----------------------------------------------------------------------------
   U3: process (CLK)
   begin
      if rising_edge(CLK) then 
         if sreset = '1' then
            fb_cfg.config_valid <= '0';
            sdi_pause_resetn_i <= (others => '0');
            reset_err_i <= '0'; 
            mb_cfg_done <= '0';
            
         else
            if (slv_reg_wren = '1') and axi_wstrb = "1111" then    
               mb_cfg_done <= '0';
               
               case axi_awaddr(7 downto 0) is
                  when x"00" => fb_cfg.base_addr            <= unsigned(AXI4_LITE_MOSI.WDATA(fb_cfg.base_addr'length-1 downto 0));
                  when x"04" => fb_cfg.fb_mode              <= AXI4_LITE_MOSI.WDATA(fb_cfg.fb_mode'length-1 downto 0);
                  when x"08" => fb_cfg.img_width            <= unsigned(AXI4_LITE_MOSI.WDATA(fb_cfg.img_width'length-1 downto 0));
                  when x"0C" => fb_cfg.img_height           <= unsigned(AXI4_LITE_MOSI.WDATA(fb_cfg.img_height'length-1 downto 0));
                  when x"10" => fb_cfg.img_size             <= unsigned(AXI4_LITE_MOSI.WDATA(fb_cfg.img_size'length-1 downto 0));
                  when x"14" => fb_cfg.read_start_pix       <= unsigned(AXI4_LITE_MOSI.WDATA(fb_cfg.read_start_pix'length-1 downto 0));
                  when x"18" => fb_cfg.read_width           <= unsigned(AXI4_LITE_MOSI.WDATA(fb_cfg.read_width'length-1 downto 0));
                  when x"1C" => fb_cfg.read_start_line      <= unsigned(AXI4_LITE_MOSI.WDATA(fb_cfg.read_start_line'length-1 downto 0));
                  when x"20" => fb_cfg.read_stop_line       <= unsigned(AXI4_LITE_MOSI.WDATA(fb_cfg.read_stop_line'length-1 downto 0));
                  when x"24" => fb_cfg.config_valid         <= AXI4_LITE_MOSI.WDATA(0);
                  when x"28" => sdi_img_x_flip_i            <= AXI4_LITE_MOSI.WDATA(0);
                  when x"2C" => sdi_img_y_flip_i            <= AXI4_LITE_MOSI.WDATA(0);
                  when x"30" => cmap_param_i.lut_start_add  <= unsigned(AXI4_LITE_MOSI.WDATA(cmap_param_i.lut_start_add'length-1 downto 0));
                  when x"34" => cmap_param_i.lut_size       <= AXI4_LITE_MOSI.WDATA(cmap_param_i.lut_size'length-1 downto 0);
                  when x"38" => cmap_param_i.lut_end_add    <= unsigned(AXI4_LITE_MOSI.WDATA(cmap_param_i.lut_end_add'length-1 downto 0));
                  when x"3C" => cmap_param_i.x_min          <= AXI4_LITE_MOSI.WDATA(cmap_param_i.x_min'length-1 downto 0);
                  when x"40" => cmap_param_i.x_range        <= AXI4_LITE_MOSI.WDATA(cmap_param_i.x_range'length-1 downto 0);
                  when x"44" => scaler_img_width_i          <= AXI4_LITE_MOSI.WDATA(scaler_img_width_i'length-1 downto 0);
                  when x"48" => scaler_img_size_i           <= AXI4_LITE_MOSI.WDATA(scaler_img_size_i'length-1 downto 0);
                  when x"4C" => output_img_size_i           <= AXI4_LITE_MOSI.WDATA(output_img_size_i'length-1 downto 0);
                  when x"50" => sdi_img_v_start_i           <= AXI4_LITE_MOSI.WDATA(sdi_img_v_start_i'length-1 downto 0);
                  when x"54" => sdi_img_v_stop_i            <= AXI4_LITE_MOSI.WDATA(sdi_img_v_stop_i'length-1 downto 0);
                  when x"58" => sdi_img_h_start_i           <= AXI4_LITE_MOSI.WDATA(sdi_img_h_start_i'length-1 downto 0);
                  when x"5C" => sdi_img_h_stop_i            <= AXI4_LITE_MOSI.WDATA(sdi_img_h_stop_i'length-1 downto 0);
                  when x"60" => sdi_720pn_1080p_i           <= AXI4_LITE_MOSI.WDATA(0);
                  when x"64" => sdi_pause_resetn_i          <= AXI4_LITE_MOSI.WDATA(sdi_pause_resetn_i'length-1 downto 0);   
                  
                                 -- video
                  when X"68" => video_config_i.ehdri_index        <= AXI4_LITE_MOSI.WDATA(video_config_i.ehdri_index'length-1 downto 0);
                  when X"6C" => video_config_i.fw_position        <= AXI4_LITE_MOSI.WDATA(video_config_i.fw_position'length-1 downto 0);
                  when X"70" => video_config_i.selector           <= AXI4_LITE_MOSI.WDATA(video_config_i.selector'length-1 downto 0);
                  when X"74" => video_config_i.freeze_cmd         <= AXI4_LITE_MOSI.WDATA(0);
               
                  when x"FC" => reset_err_i                 <= AXI4_LITE_MOSI.WDATA(0);
                  when others =>
               end case;   
               
            else  
               mb_cfg_done <= '1';
            end if;                                        
         end if;
      end if;
   end process; 
   
	----------------------------------------------------------------------------
   -- AXI WR : WR response
   ----------------------------------------------------------------------------
   U4: process (CLK)
   begin
      if rising_edge(CLK) then 
         if sreset = '1' then
            axi_bvalid  <= '0';
            axi_bresp   <= "00"; --need to work more on the responses
         else
            if (axi_awready = '1' and AXI4_LITE_MOSI.AWVALID = '1' and axi_wready = '1' and AXI4_LITE_MOSI.WVALID = '1' and axi_bvalid = '0'  ) then
               axi_bvalid <= '1';
               axi_bresp  <= "00"; 
            elsif (AXI4_LITE_MOSI.BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
               axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
            end if;
         end if;
      end if;
   end process; 
   
   ----------------------------------------------------------------------------
   -- RD : contrôle du flow
   ---------------------------------------------------------------------------- 
   -- (pour l'instant transaction se fait à au max 1 CLK sur 2   
   U5: process (CLK)
   begin
      if rising_edge(CLK) then 
         if sreset = '1' then
            axi_arready <= '0';
            axi_araddr  <= (others => '1');
            axi_rvalid <= '0';
            axi_rresp  <= "00";
         else
            if axi_arready = '0' and AXI4_LITE_MOSI.ARVALID = '1' then
               -- indicates that the slave has acceped the valid read address
               axi_arready <= '1';
               -- Read Address latching 
               axi_araddr  <= AXI4_LITE_MOSI.ARADDR;
            else
               axi_arready <= '0';
            end if;            
            if axi_arready = '1' and AXI4_LITE_MOSI.ARVALID = '1' and axi_rvalid = '0' then
               -- Valid read data is available at the read data bus
               axi_rvalid <= '1';
               axi_rresp  <= "00"; -- 'OKAY' response
            elsif axi_rvalid = '1' and AXI4_LITE_MOSI.RREADY = '1' then
               -- Read data is accepted by the master
               axi_rvalid <= '0';
            end if;
            
         end if;
      end if;
   end process;
   
   ---------------------------------------------------------------------------- 
   -- RD : données vers µBlaze                                       
   ---------------------------------------------------------------------------- 
   U6: process(CLK)
   begin
      if rising_edge(CLK) then         
         case axi_araddr(7 downto 0) is
            when x"00"  => reg_data_out <= std_logic_vector(resize(fb_cfg.base_addr, reg_data_out'length));
            when x"04"  => reg_data_out <= std_logic_vector(resize(fb_cfg.fb_mode, reg_data_out'length));
            when x"08"  => reg_data_out <= std_logic_vector(resize(fb_cfg.img_width, reg_data_out'length));
            when x"0C"  => reg_data_out <= std_logic_vector(resize(fb_cfg.img_height, reg_data_out'length));
            when x"10"  => reg_data_out <= std_logic_vector(resize(fb_cfg.img_size, reg_data_out'length));
            when x"14"  => reg_data_out <= std_logic_vector(resize(fb_cfg.read_start_pix, reg_data_out'length));
            when x"18"  => reg_data_out <= std_logic_vector(resize(fb_cfg.read_width, reg_data_out'length));
            when x"1C"  => reg_data_out <= std_logic_vector(resize(fb_cfg.read_start_line, reg_data_out'length));
            when x"20"  => reg_data_out <= std_logic_vector(resize(fb_cfg.read_stop_line, reg_data_out'length));
            when x"24"  => reg_data_out <= std_logic_vector(resize(fb_cfg.config_valid, reg_data_out'length));
            when x"28"  => reg_data_out <= std_logic_vector(resize(sdi_img_x_flip_i, reg_data_out'length));
            when x"2C"  => reg_data_out <= std_logic_vector(resize(sdi_img_y_flip_i, reg_data_out'length));
            when x"30"  => reg_data_out <= std_logic_vector(resize(cmap_param_i.lut_start_add, reg_data_out'length));
            when x"34"  => reg_data_out <= std_logic_vector(resize(cmap_param_i.lut_size, reg_data_out'length));
            when x"38"  => reg_data_out <= std_logic_vector(resize(cmap_param_i.lut_end_add, reg_data_out'length));
            when x"3C"  => reg_data_out <= std_logic_vector(resize(cmap_param_i.x_min, reg_data_out'length));
            when x"40"  => reg_data_out <= std_logic_vector(resize(cmap_param_i.x_range, reg_data_out'length));
            when x"44"  => reg_data_out <= std_logic_vector(resize(scaler_img_width_i, reg_data_out'length));
            when x"48"  => reg_data_out <= std_logic_vector(resize(scaler_img_size_i, reg_data_out'length));
            when x"4C"  => reg_data_out <= std_logic_vector(resize(output_img_size_i, reg_data_out'length));
            when x"50"  => reg_data_out <= std_logic_vector(resize(sdi_img_v_start_i, reg_data_out'length));
            when x"54"  => reg_data_out <= std_logic_vector(resize(sdi_img_v_stop_i, reg_data_out'length));
            when x"58"  => reg_data_out <= std_logic_vector(resize(sdi_img_h_start_i, reg_data_out'length));
            when x"5C"  => reg_data_out <= std_logic_vector(resize(sdi_img_h_stop_i, reg_data_out'length));
            when x"60"  => reg_data_out <= std_logic_vector(resize(sdi_720pn_1080p_i, reg_data_out'length));
            when x"64"  => reg_data_out <= std_logic_vector(resize(sdi_pause_resetn_i, reg_data_out'length));
            
            when x"68"  => reg_data_out <= std_logic_vector(resize(video_config_i.ehdri_index, reg_data_out'length));
            when x"6C"  => reg_data_out <= std_logic_vector(resize(video_config_i.fw_position, reg_data_out'length));
            when x"70"  => reg_data_out <= std_logic_vector(resize(video_config_i.selector, reg_data_out'length));
            when x"74"  => reg_data_out <= std_logic_vector(resize(video_config_i.freeze_cmd, reg_data_out'length));
            
            when x"FC"  => reg_data_out <= std_logic_vector(resize(error_latch, reg_data_out'length));
            when others => reg_data_out <= (others => '0');
         end case;        
      end if;     
   end process;  
   
   ---------------------------------------------------------------------------- 
   -- Axi RD responses                                      
   ---------------------------------------------------------------------------- 
   U7: process (CLK)
   begin
      if rising_edge(CLK) then
         if sreset = '1' then
            axi_rvalid <= '0';
            axi_rresp  <= "00";
         else
            if (axi_arready = '1' and AXI4_LITE_MOSI.ARVALID = '1' and axi_rvalid = '0') then
               -- Valid read data is available at the read data bus
               axi_rvalid <= '1';
               axi_rresp  <= "00"; -- 'OKAY' response
            elsif (axi_rvalid = '1' and AXI4_LITE_MOSI.RREADY = '1') then
               -- Read data is accepted by the master
               axi_rvalid <= '0';
            end if;
         end if;
      end if;
   end process;
   
   -- Implement memory mapped register select and read logic generation
   -- Slave register read enable is asserted when valid address is available
   -- and the slave is ready to accept the read address.
   slv_reg_rden <= axi_arready and AXI4_LITE_MOSI.ARVALID and (not axi_rvalid) ; 
   -- Read address mux
   axi_rdata <= reg_data_out;     -- register read data

   
   ERROR_PROC : process(CLK) 
   begin
      if rising_edge(CLK) then
         -- reset des erreurs
         if (sreset = '1' or reset_err_i = '1') then
            error_latch  <= (others => '0');
         else
            -- latch des erreurs
            for i in 0 to error_latch'length-1 loop
               if SDI_ERR(i) = '1'  then  
                  error_latch(i)  <=  '1';
               end if;
            end  loop;
            
         end if;
            
      end if;
   end process;
   
end implementation;
