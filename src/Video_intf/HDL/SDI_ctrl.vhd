library ieee;
use ieee.std_logic_1164.all;

library work;
use work.tel2000.all;

entity SDI_ctrl is
  port (
    Sys_clk          : in  std_logic;   -- Sys clock
    Rst              : in  std_logic;   -- sys reset
    
   -- AXI signals
    Axi_Mosi : in t_axi4_lite_mosi;
    Axi_Miso : out t_axi4_lite_miso;

	-- Output signals
   Input_Img_Width   : out std_logic_vector(31 downto 0);
   Input_Img_Height  : out std_logic_vector(31 downto 0);
   Input_Img_Size    : out std_logic_vector(31 downto 0);

   Output_Img_Width  : out std_logic_vector(31 downto 0);
   Output_Img_Height : out std_logic_vector(31 downto 0);
   Output_Img_Size   : out std_logic_vector(31 downto 0);

   Scaler_Img_Width   : out std_logic_vector(31 downto 0);
   Scaler_Img_Height  : out std_logic_vector(31 downto 0);
   Scaler_Img_Size    : out std_logic_vector(31 downto 0);

   FB_Start_Pixel     : out std_logic_vector(31 downto 0);
   FB_Width_Pixel     : out std_logic_vector(31 downto 0);
   FB_Start_Line      : out std_logic_vector(31 downto 0);
   FB_Stop_Line       : out std_logic_vector(31 downto 0);

   Nb_Frame_Valid    : out std_logic_vector(31 downto 0);
   
   SDI_Img_v_Start   : out std_logic_vector(31 downto 0);
   SDI_Img_v_Stop    : out std_logic_vector(31 downto 0);
   SDI_Img_h_Start   : out std_logic_vector(31 downto 0);
   SDI_Img_h_Stop    : out std_logic_vector(31 downto 0);
   SDI_Img_x_Flip    : out std_logic;
   SDI_Img_y_Flip    : out std_logic;
   
   SDI_720pn_1080p   : out std_logic; 							

   SDI_Fb_Baseaddr        : out std_logic_vector(31 downto 0);
   SDI_Fb_Mode            : out std_logic_vector(2 downto 0);
   SDI_Fb_Header_Size     : out std_logic_vector(31 downto 0);
   SDI_Pattern_Selector   : out std_logic_vector(1 downto 0);
   SDI_ResetN             : out std_logic;
   
   Start_Addr  			: out std_logic_vector(31 downto 0);
   LUT_Size 			: out std_logic_vector(31 downto 0);
   End_Addr   			: out std_logic_vector(31 downto 0);
   X_Min    			: out std_logic_vector(31 downto 0);
   X_Range    			: out std_logic_vector(31 downto 0);
   FB_Read_Pause		: out std_logic;
   Fb_Config_Valid      : out std_logic
    
);
end SDI_ctrl;

architecture implementation of SDI_ctrl is
    attribute keep : string;

-------------------------------------------------------------------------------
-- Signal Declarations
-------------------------------------------------------------------------------
   signal cfg_waddr	               : std_logic_vector(11 downto 0);
   signal cfg_raddr	               : std_logic_vector(11 downto 0);
   signal cfg_read_data             : std_logic_vector(31 downto 0);
   signal cfg_wren   	            : std_logic;
   signal cfg_rden   	            : std_logic;

   attribute keep of cfg_waddr : signal is "TRUE";
   attribute keep of cfg_raddr : signal is "TRUE";
   attribute keep of cfg_wren : signal is "TRUE";
   attribute keep of cfg_rden : signal is "TRUE";

   signal axi_mosi_i                : t_axi4_lite_mosi;
   signal axi_miso_i                : t_axi4_lite_miso;
   
   signal input_img_width_i   : std_logic_vector(31 downto 0);
   signal input_img_height_i  : std_logic_vector(31 downto 0);
   signal input_img_size_i    : std_logic_vector(31 downto 0);
   signal output_img_width_i  : std_logic_vector(31 downto 0);
   signal output_img_height_i : std_logic_vector(31 downto 0);
   signal output_img_size_i   : std_logic_vector(31 downto 0);
   signal scaler_img_width_i   : std_logic_vector(31 downto 0);
   signal scaler_img_height_i  : std_logic_vector(31 downto 0);
   signal scaler_img_size_i    : std_logic_vector(31 downto 0);
   signal fb_start_pixel_i   : std_logic_vector(31 downto 0);
   signal fb_width_pixel_i  : std_logic_vector(31 downto 0);
   signal fb_start_line_i    : std_logic_vector(31 downto 0);
   signal fb_stop_line_i    : std_logic_vector(31 downto 0);
   
   signal nb_frame_valid_i    : std_logic_vector(31 downto 0);

   signal sdi_img_v_start_i   : std_logic_vector(31 downto 0);
   signal sdi_img_v_stop_i    : std_logic_vector(31 downto 0);
   signal sdi_img_h_start_i   : std_logic_vector(31 downto 0);
   signal sdi_img_h_stop_i    : std_logic_vector(31 downto 0);
   signal sdi_img_x_flip_i    : std_logic;
   signal sdi_img_y_flip_i    : std_logic;
   
   signal sdi_720pn_1080p_i    : std_logic;

   signal sdi_fb_baseaddr_i        : std_logic_vector(31 downto 0);
   signal sdi_fb_mode_i            : std_logic_vector(2 downto 0);
   signal sdi_fb_header_size_i     : std_logic_vector(31 downto 0);
   signal sdi_pattern_selector_i   : std_logic_vector(1 downto 0);
   signal sdi_resetn_i             : std_logic;
   signal fb_read_pause_i          : std_logic;
   signal fb_config_valid_i        : std_logic;

   signal start_addr_i  	: std_logic_vector(31 downto 0);
   signal lut_size_i	  	: std_logic_vector(31 downto 0);
   signal end_addr_i 		: std_logic_vector(31 downto 0);
   signal x_min_i   		: std_logic_vector(31 downto 0);
   signal x_range_i	    	: std_logic_vector(31 downto 0);

   attribute keep of input_img_width_i : signal is "TRUE";
   attribute keep of input_img_height_i : signal is "TRUE";
   attribute keep of input_img_size_i : signal is "TRUE";
   attribute keep of output_img_width_i : signal is "TRUE";
   attribute keep of output_img_height_i : signal is "TRUE";
   attribute keep of output_img_size_i : signal is "TRUE";
   
   attribute keep of sdi_img_v_start_i : signal is "TRUE";
   attribute keep of sdi_img_v_stop_i : signal is "TRUE";
   attribute keep of sdi_img_h_start_i : signal is "TRUE";
   attribute keep of sdi_img_h_stop_i : signal is "TRUE";
   attribute keep of sdi_img_x_flip_i : signal is "TRUE";
   attribute keep of sdi_img_y_flip_i : signal is "TRUE";

   attribute keep of sdi_fb_baseaddr_i : signal is "TRUE";
   attribute keep of sdi_fb_mode_i : signal is "TRUE";
   attribute keep of sdi_fb_header_size_i : signal is "TRUE";
   attribute keep of sdi_pattern_selector_i : signal is "TRUE";
   attribute keep of sdi_resetn_i : signal is "TRUE";
   attribute keep of fb_config_valid_i : signal is "TRUE";

begin

   axi_mosi_i.awvalid <= Axi_Mosi.awvalid;
   axi_mosi_i.awaddr <= Axi_Mosi.awaddr;
   axi_mosi_i.wvalid <= Axi_Mosi.wvalid;
   axi_mosi_i.wdata <= Axi_Mosi.wdata;
   axi_mosi_i.bready <= Axi_Mosi.bready;
   axi_mosi_i.arvalid <= Axi_Mosi.arvalid;
   axi_mosi_i.araddr <= Axi_Mosi.araddr;
   axi_mosi_i.rready <= Axi_Mosi.rready;
   
   Axi_Miso.AWREADY <= axi_miso_i.AWREADY;
   Axi_Miso.WREADY <= axi_miso_i.WREADY;
   Axi_Miso.BVALID <= axi_miso_i.BVALID;
   Axi_Miso.BRESP <= axi_miso_i.BRESP;
   Axi_Miso.ARREADY <= axi_miso_i.ARREADY;
   Axi_Miso.RVALID <= axi_miso_i.RVALID;
   Axi_Miso.RDATA <= axi_miso_i.RDATA;
   Axi_Miso.RRESP <= axi_miso_i.RRESP;
   
   Input_Img_Width   <= input_img_width_i;
   Input_Img_Height  <= input_img_height_i;
   Input_Img_Size    <= input_img_size_i;
   Output_Img_Width  <= output_img_width_i;
   Output_Img_Height <= output_img_height_i;
   Output_Img_Size   <= output_img_size_i;
   Scaler_Img_Width   <= scaler_img_width_i;
   Scaler_Img_Height  <= scaler_img_height_i;
   Scaler_Img_Size    <= scaler_img_size_i;
   FB_Start_Pixel	  <= fb_start_pixel_i;
   FB_Width_Pixel	  <= fb_width_pixel_i;
   FB_Start_Line 	  <= fb_start_line_i;
   FB_Stop_Line	  	  <= fb_stop_line_i;
   
   SDI_Img_v_Start   <= sdi_img_v_start_i;
   SDI_Img_v_Stop    <= sdi_img_v_stop_i;
   SDI_Img_h_Start   <= sdi_img_h_start_i;
   SDI_Img_h_Stop    <= sdi_img_h_stop_i;
   SDI_Img_x_Flip    <= sdi_img_x_flip_i;
   SDI_Img_y_Flip    <= sdi_img_y_flip_i;
   
   sdi_720pn_1080p    <= sdi_720pn_1080p_i;

   SDI_Fb_Baseaddr      <= sdi_fb_baseaddr_i;
   SDI_Fb_Mode          <= sdi_fb_mode_i;
   SDI_Fb_Header_Size   <= sdi_fb_header_size_i;
   SDI_Pattern_Selector <= sdi_pattern_selector_i;
   SDI_ResetN           <= sdi_resetn_i;
   FB_Read_Pause        <= fb_read_pause_i;
   
   Fb_Config_Valid      <= fb_config_valid_i;
   Nb_Frame_Valid		<= nb_frame_valid_i;

   Start_Addr		<= start_addr_i;
   LUT_Size			<= lut_size_i;
   End_Addr			<= end_addr_i;
   X_Min			<= x_min_i;
   X_Range			<= x_range_i;

   AWREADY_PROC : process (Sys_clk)
   begin
      if rising_edge(Sys_clk) then 
         if Rst = '1' then
            axi_miso_i.awready <= '0';
         else
            if (axi_miso_i.awready = '0' and axi_mosi_i.awvalid = '1' and axi_mosi_i.wvalid = '1') then
               axi_miso_i.awready <= '1';
            else
               axi_miso_i.awready <= '0';
            end if;
         end if;
      end if;
   end process AWREADY_PROC; 
    
   WREADY_PROC : process (Sys_clk)
   begin
      if rising_edge(Sys_clk) then 
         if Rst = '1' then
            axi_miso_i.wready <= '0';
         else
            if (axi_miso_i.wready = '0' and axi_mosi_i.awvalid = '1' and axi_mosi_i.wvalid = '1') then
               axi_miso_i.wready <= '1';
            else
               axi_miso_i.wready <= '0';
            end if;
         end if;
      end if;
   end process WREADY_PROC; 

   CFG_WADDR_PROC : process (Sys_clk)
   begin
      if rising_edge(Sys_clk) then 
         if Rst = '1' then
            cfg_waddr <= (others => '0');
         else
            if (axi_miso_i.awready = '0' and axi_mosi_i.awvalid = '1' and axi_mosi_i.wvalid = '1') then
               cfg_waddr <= axi_mosi_i.awaddr(11 downto 0);
            end if;
         end if;
      end if;
   end process CFG_WADDR_PROC; 

	cfg_wren <= axi_miso_i.wready and axi_mosi_i.wvalid and axi_miso_i.awready and axi_mosi_i.awvalid;
   
	WRITE_PROC : process (Sys_clk)
	begin
	  if rising_edge(Sys_clk) then 
	    if Rst = '1' then
         input_img_width_i <= x"00000280";
         input_img_height_i <= x"000001E0";
         input_img_size_i <= x"0004B000";
         output_img_width_i <= x"00000500";
         output_img_height_i <= x"000002d0";
         output_img_size_i <= x"000e1000"; 
		 
         scaler_img_width_i 	<= x"00000280";	--640
         scaler_img_height_i 	<= x"00000200"; --512
         scaler_img_size_i 		<= x"00050000";	--640*512
		 fb_start_pixel_i 		<= x"00000000";	--0
         fb_width_pixel_i 		<= x"00000280"; --640
         fb_start_line_i  		<= x"00000001";	--1
		 fb_stop_line_i   		<= x"00000200";	--512  
		 
		 nb_frame_valid_i <= x"000001F4";

         sdi_img_v_start_i <= x"0000001A";
         sdi_img_v_stop_i <= x"000002e9";
         sdi_img_h_start_i <= x"00000001";
         sdi_img_h_stop_i <= x"00000500";
         sdi_img_x_flip_i <= '0';
         sdi_img_y_flip_i <= '0';
		 
		 sdi_720pn_1080p_i <= '1';

         sdi_fb_baseaddr_i <= x"80000000";
         sdi_fb_mode_i <= "001";
         sdi_fb_header_size_i <= x"00000002";
         sdi_pattern_selector_i <= "00";
         sdi_resetn_i <= '0';
		 fb_read_pause_i <= '0';
         fb_config_valid_i <= '0';
         
         start_addr_i <= x"00000000";
         lut_size_i <= x"00000400";
         end_addr_i <= x"00000400";
         x_min_i <= x"00000000";
         x_range_i <= x"00010000";
      else
	      if (cfg_wren = '1') then
            case (cfg_waddr) is
               when X"000" =>
                  input_img_width_i <= axi_mosi_i.wdata;
               
               when X"004" =>
                  input_img_height_i <= axi_mosi_i.wdata;
               
               when X"008" =>
                  input_img_size_i <= axi_mosi_i.wdata;
               
               when X"00C" =>
                  output_img_width_i <= axi_mosi_i.wdata;
               
               when X"010" =>
                  output_img_height_i <= axi_mosi_i.wdata;
               
               when X"014" =>
			   	  output_img_size_i <= axi_mosi_i.wdata;
			   
               when X"018" =>
			   	  nb_frame_valid_i <= axi_mosi_i.wdata;
               
               when X"01C" =>
                  sdi_img_v_start_i <= axi_mosi_i.wdata;
               
               when X"020" =>
                  sdi_img_v_stop_i <= axi_mosi_i.wdata;
               
               when X"024" =>
                  sdi_img_h_start_i <= axi_mosi_i.wdata;
               
               when X"028" =>
                  sdi_img_h_stop_i <= axi_mosi_i.wdata;
               
               when X"02C" =>
                  sdi_img_x_flip_i <= axi_mosi_i.wdata(0);
               
               when X"030" =>
                  sdi_img_y_flip_i <= axi_mosi_i.wdata(0);
               
               when X"034" =>
                  sdi_fb_baseaddr_i <= axi_mosi_i.wdata;
               
               when X"038" =>
                  sdi_fb_mode_i <= axi_mosi_i.wdata(2 downto 0);
               
               when X"03C" =>
                  sdi_fb_header_size_i <= axi_mosi_i.wdata;
               
               when X"040" =>
                  sdi_pattern_selector_i <= axi_mosi_i.wdata(1 downto 0);
               
               when X"044" =>
                  start_addr_i <= axi_mosi_i.wdata;

               when X"048" =>
                  lut_size_i <= axi_mosi_i.wdata;

               when X"04C" =>
                  end_addr_i <= axi_mosi_i.wdata;

               when X"050" =>
                  x_min_i <= axi_mosi_i.wdata;
				  
               when X"054" =>
			   	  x_range_i <= axi_mosi_i.wdata;
			   
               when X"058" =>
                  scaler_img_width_i <= axi_mosi_i.wdata;
               
               when X"05C" =>
                  scaler_img_height_i <= axi_mosi_i.wdata;
               
               when X"060" =>
			   	  scaler_img_size_i <= axi_mosi_i.wdata;
			   
               when X"064" =>
			   	  fb_start_pixel_i <= axi_mosi_i.wdata;
			   
               when X"068" =>
                  fb_width_pixel_i <= axi_mosi_i.wdata;
               
               when X"06C" =>
                  fb_start_line_i <= axi_mosi_i.wdata;
               
               when X"070" =>
			      fb_stop_line_i <= axi_mosi_i.wdata;
			   
               when X"074" =>
			   	  sdi_resetn_i <= axi_mosi_i.wdata(0);
			   	  fb_read_pause_i <= axi_mosi_i.wdata(1);

               when X"078" =>
			   	 fb_config_valid_i <= axi_mosi_i.wdata(0);
			   
			   when X"07C" =>
                  sdi_720pn_1080p_i <= axi_mosi_i.wdata(0);

	          when others =>

             end case;
         end if;
	    end if;
	  end if;                   
	end process WRITE_PROC; 
   
	BVALID_PROC : process (Sys_clk)
	begin
	  if rising_edge(Sys_clk) then 
	    if Rst = '1' then
	      axi_miso_i.bvalid  <= '0';
	      axi_miso_i.bresp   <= "00";
	    else
	      if (axi_miso_i.awready = '1' and axi_mosi_i.awvalid = '1' and axi_miso_i.wready = '1' and axi_mosi_i.wvalid = '1' and axi_miso_i.bvalid = '0'  ) then
	        axi_miso_i.bvalid <= '1';
	        axi_miso_i.bresp  <= "00"; 
	      elsif (axi_mosi_i.bready = '1' and axi_miso_i.bvalid = '1') then
	        axi_miso_i.bvalid <= '0';                                 
	      end if;
	    end if;
	  end if;                   
	end process BVALID_PROC; 

	CFG_RADDR_PROC : process (Sys_clk)
	begin
	  if rising_edge(Sys_clk) then 
	    if Rst = '1' then
	      axi_miso_i.arready <= '0';
	      cfg_raddr  <= (others => '1');
	    else
	      if (axi_miso_i.arready = '0' and axi_mosi_i.arvalid = '1') then
	        -- indicates that the slave has acceped the valid read address
	        axi_miso_i.arready <= '1';
	        -- Read Address latching 
	        cfg_raddr  <= axi_mosi_i.araddr(11 downto 0);           
	      else
	        axi_miso_i.arready <= '0';
	      end if;
	    end if;
	  end if;                   
	end process CFG_RADDR_PROC; 
   
	RVALID_PROC : process (Sys_clk)
	begin
	  if rising_edge(Sys_clk) then
	    if Rst = '1' then
	      axi_miso_i.rvalid <= '0';
	      axi_miso_i.rresp  <= "00";
	    else
	      if (axi_miso_i.arready = '1' and axi_mosi_i.arvalid = '1' and axi_miso_i.rvalid = '0') then
	        axi_miso_i.rvalid <= '1';
	        axi_miso_i.rresp  <= "00"; -- 'OKAY' response
	      elsif (axi_miso_i.rvalid = '1' and axi_mosi_i.rready = '1') then
	        -- Read data is accepted by the master
	        axi_miso_i.rvalid <= '0';
	      end if;            
	    end if;
	  end if;
	end process RVALID_PROC;

	cfg_rden <= axi_miso_i.arready and axi_mosi_i.arvalid and (not axi_miso_i.rvalid) ;

	READ_PROC : process (input_img_width_i, input_img_height_i, input_img_size_i, output_img_width_i, output_img_height_i, output_img_size_i,
                        sdi_img_v_start_i, sdi_img_v_stop_i, sdi_img_h_start_i, sdi_img_h_stop_i, sdi_img_x_flip_i, sdi_img_y_flip_i, sdi_fb_baseaddr_i, 
                        sdi_fb_mode_i, sdi_fb_header_size_i, sdi_pattern_selector_i, sdi_resetn_i, fb_read_pause_i, fb_config_valid_i, cfg_raddr, Rst, cfg_rden, nb_frame_valid_i,
                        start_addr_i,end_addr_i, x_min_i,x_range_i, scaler_img_width_i, scaler_img_height_i, scaler_img_size_i, fb_start_pixel_i,
						fb_width_pixel_i, fb_start_line_i, fb_stop_line_i,sdi_720pn_1080p_i)
	begin
	  if Rst = '1' then
	    cfg_read_data  <= (others => '0');
	  else
	    -- Address decoding for reading registers
	    case cfg_raddr is
       when X"000" =>
         cfg_read_data <= input_img_width_i;

       when X"004" =>
         cfg_read_data <= input_img_height_i;

       when X"008" =>
         cfg_read_data <= input_img_size_i;

       when X"00C" =>
         cfg_read_data <= output_img_width_i;

       when X"010" =>
         cfg_read_data <= output_img_height_i;

       when X"014" =>
         cfg_read_data <= output_img_size_i;

       when X"018" =>
	   	  cfg_read_data <= nb_frame_valid_i;

	   when X"01C" =>
         cfg_read_data <= sdi_img_v_start_i;

       when X"020" =>
         cfg_read_data <= sdi_img_v_stop_i;

       when X"024" =>
         cfg_read_data <= sdi_img_h_start_i;

       when X"028" =>
         cfg_read_data <= sdi_img_h_stop_i;

       when X"02C" =>
         cfg_read_data <= X"0000000" & "000" & sdi_img_x_flip_i;

       when X"030" =>
         cfg_read_data <= X"0000000" & "000" & sdi_img_y_flip_i;

       when X"034" =>
         cfg_read_data <= sdi_fb_baseaddr_i;

       when X"038" =>
         cfg_read_data <= X"0000000" & "0" & sdi_fb_mode_i;

       when X"03C" =>
         cfg_read_data <= sdi_fb_header_size_i;

       when X"040" =>
         cfg_read_data <= X"0000000" & "00" & sdi_pattern_selector_i;

       when X"044" =>
         cfg_read_data <= start_addr_i;

       when X"048" =>
         cfg_read_data <= lut_size_i;

       when X"04C" =>
         cfg_read_data <= end_addr_i;

       when X"050" =>
         cfg_read_data <= x_min_i;
		  
       when X"054" =>
         cfg_read_data <= x_range_i;
	   
       when X"058" =>
         cfg_read_data <= scaler_img_width_i;

       when X"05C" =>
         cfg_read_data <= scaler_img_height_i;

       when X"060" =>
	     cfg_read_data <= scaler_img_size_i;
	   
       when X"064" =>
         cfg_read_data <= fb_start_pixel_i;
	   
       when X"068" =>
         cfg_read_data <= fb_width_pixel_i;

       when X"06C" =>
         cfg_read_data <= fb_start_line_i;

       when X"070" =>
	     cfg_read_data <= fb_stop_line_i;
	   
       when X"074" =>
          cfg_read_data <= X"0000000" & "00" & fb_read_pause_i & sdi_resetn_i;

       when X"078" =>
	   	  cfg_read_data <= X"0000000" & "000" & fb_config_valid_i;
	   
	   when X"07C" =>
          cfg_read_data <= X"0000000" & "000" & sdi_720pn_1080p_i;
         	    
       when others =>
          cfg_read_data  <= (others => '0');
         
	    end case;
	  end if;
	end process; 

	OUTPUT_READ_PROC : process( Sys_clk ) is
	begin
	  if (rising_edge (Sys_clk)) then
	    if ( Rst = '1' ) then
	      axi_miso_i.rdata  <= (others => '0');
	    else
	      if (cfg_rden = '1') then
	          axi_miso_i.rdata <= cfg_read_data;     -- register read data
	      end if;   
	    end if;
	  end if;
	end process;
   
end implementation;
