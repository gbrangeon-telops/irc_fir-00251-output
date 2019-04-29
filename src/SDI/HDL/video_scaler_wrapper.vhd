-------------------------------------------------------------------------------
--
-- Title       : video_scaler_wrapper
-- Design      : fir-00251-camera
-- Author      : Jean-Alexis Boulet
-- Company     : Telops
--
-------------------------------------------------------------------------------
--
-- File        : 
-- Generated   : 
-- From        : 
-- By          : 
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.TEL2000.all;

entity video_scaler_wrapper is
   port(
        CORE_CLK : in std_logic;
        CORE_ARESETN : in std_logic;
        
        VIDEO_IN_CLK : in std_logic;
        VIDEO_IN_ARESETN : in std_logic;
        AXIS_VIDEO_IN_MOSI : in t_axi4_stream_mosi32;
        AXIS_VIDEO_IN_MISO : out t_axi4_stream_miso;
        
        VIDEO_OUT_CLK : in std_logic;
        VIDEO_OUT_ARESETN : in std_logic;
        AXIS_VIDEO_OUT_MOSI : out t_axi4_stream_mosi32;
        AXIS_VIDEO_OUT_MISO : in t_axi4_stream_miso;
        
        AXIL_CLK : in std_logic;
        AXIL_ARESETN : in std_logic;
        AXIL_MOSI : in t_axi4_lite_mosi;
        AXIL_MISO : out t_axi4_lite_miso;

        SCALER_INPUT_IMG_SIZE : in std_logic_vector(31 downto 0);
        SCALER_INPUT_IMG_WIDTH : in std_logic_vector(15 downto 0)
    );
end video_scaler_wrapper;


architecture rtl of video_scaler_wrapper is

component sync_resetn
   port(
      ARESETN : in STD_LOGIC;
      SRESETN : out STD_LOGIC;
      CLK    : in STD_LOGIC);
end component;

component v_scaler_0
  port (
    s_axis_video_aclk : in std_logic;
    core_clk : in std_logic;
    m_axis_video_aclk : in std_logic;
    s_axis_video_tdata : in std_logic_vector(23 downto 0);
    s_axis_video_tready : out std_logic;
    s_axis_video_aresetn : in std_logic;
    s_axis_video_tvalid : in std_logic;
    s_axis_video_tlast : in std_logic;
    s_axis_video_tuser : in std_logic;
    m_axis_video_tdata : out std_logic_vector(23 downto 0);
    m_axis_video_tvalid : out std_logic;
    m_axis_video_tready : in std_logic;
    m_axis_video_aresetn : in std_logic;
    m_axis_video_tlast : out std_logic;
    m_axis_video_tuser : out std_logic;
    irq : out std_logic;
    core_aresetn : in std_logic;
    s_axi_awaddr : in std_logic_vector(8 downto 0);
    s_axi_aclk : in std_logic;
    s_axi_aresetn : in std_logic;
    s_axi_awvalid : in std_logic;
    s_axi_awready : out std_logic;
    s_axi_wdata : in std_logic_vector(31 downto 0);
    s_axi_wstrb : in std_logic_vector(3 downto 0);
    s_axi_wvalid : in std_logic;
    s_axi_wready : out std_logic;
    s_axi_bresp : out std_logic_vector(1 downto 0);
    s_axi_bvalid : out std_logic;
    s_axi_bready : in std_logic;
    s_axi_araddr : in std_logic_vector(8 downto 0);
    s_axi_arvalid : in std_logic;
    s_axi_arready : out std_logic;
    s_axi_rdata : out std_logic_vector(31 downto 0);
    s_axi_rresp : out std_logic_vector(1 downto 0);
    s_axi_rvalid : out std_logic;
    s_axi_rready : in std_logic
  );
end component;

signal video_in_sresetn : std_logic;
signal axis_video_in_tready : std_logic;
signal start_of_frame : std_logic;
signal end_of_line : std_logic;
signal compteur_pixel_scaler : unsigned(SCALER_INPUT_IMG_SIZE'range);    
signal compteur_line_scaler : unsigned(SCALER_INPUT_IMG_WIDTH'range);

begin

reset : sync_resetn port map(ARESETN => VIDEO_IN_ARESETN, CLK => VIDEO_IN_CLK, SRESETN => video_in_sresetn);

AXIS_VIDEO_IN_MISO.TREADY <= axis_video_in_tready;

U1 : v_scaler_0
   port map (
        s_axis_video_aclk => VIDEO_IN_CLK,
        m_axis_video_aclk => VIDEO_OUT_CLK,       
        s_axis_video_aresetn => VIDEO_IN_ARESETN,
        m_axis_video_aresetn => VIDEO_OUT_ARESETN,
        core_clk => CORE_CLK,
        core_aresetn => CORE_ARESETN,
        irq => open,
        
        s_axis_video_tdata => AXIS_VIDEO_IN_MOSI.TDATA(23 downto 0),
        s_axis_video_tready => axis_video_in_tready, 
        s_axis_video_tvalid => AXIS_VIDEO_IN_MOSI.TVALID,
        s_axis_video_tlast => end_of_line,
        s_axis_video_tuser => start_of_frame,
                
        m_axis_video_tdata => AXIS_VIDEO_OUT_MOSI.TDATA(23 downto 0),
        m_axis_video_tvalid => AXIS_VIDEO_OUT_MOSI.TVALID,
        m_axis_video_tready => AXIS_VIDEO_OUT_MISO.TREADY,      
        m_axis_video_tlast => AXIS_VIDEO_OUT_MOSI.TLAST,
        m_axis_video_tuser => AXIS_VIDEO_OUT_MOSI.TUSER(0),
        
        -- Axi4 Lite ports
        s_axi_awaddr => AXIL_MOSI.AWADDR(8 downto 0),
        s_axi_aclk => AXIL_CLK,
        s_axi_aresetn => AXIL_ARESETN,
        s_axi_awvalid => AXIL_MOSI.AWVALID,
        s_axi_awready => AXIL_MISO.AWREADY,
        s_axi_wdata => AXIL_MOSI.WDATA,
        s_axi_wstrb => AXIL_MOSI.WSTRB,
        s_axi_wvalid => AXIL_MOSI.WVALID,
        s_axi_wready => AXIL_MISO.WREADY,
        s_axi_bresp => AXIL_MISO.BRESP,
        s_axi_bvalid => AXIL_MISO.BVALID,
        s_axi_bready => AXIL_MOSI.BREADY,
        s_axi_araddr => AXIL_MOSI.ARADDR(8 downto 0),
        s_axi_arvalid => AXIL_MOSI.ARVALID,
        s_axi_arready => AXIL_MISO.ARREADY,
        s_axi_rdata => AXIL_MISO.RDATA,
        s_axi_rresp => AXIL_MISO.RRESP,
        s_axi_rvalid => AXIL_MISO.RVALID,
        s_axi_rready => AXIL_MOSI.RREADY
   );
      
    AXIS_VIDEO_OUT_MOSI.TDATA(31 downto 24) <= (others => '0');
    AXIS_VIDEO_OUT_MOSI.TUSER(7 downto 1) <= (others => '0');
    AXIS_VIDEO_OUT_MOSI.TKEEP <= (others => '1');
    AXIS_VIDEO_OUT_MOSI.TSTRB <= (others => '1');
	 AXIS_VIDEO_OUT_MOSI.TID <= (others => '0');
	 AXIS_VIDEO_OUT_MOSI.TDEST <= (others => '0');
    
    sof_eol_proc : process(VIDEO_IN_CLK) --Count pixels and generate tuser (start of frame) and tlast (end of line) from the frame buffer to video scaler
    begin
        if rising_edge(VIDEO_IN_CLK) then
            if video_in_sresetn = '0' then
               compteur_pixel_scaler <= (others => '0');
               compteur_line_scaler <= (others => '0');
               end_of_line <= '0';
               start_of_frame <= '1';
            else
                if (compteur_pixel_scaler >= (unsigned(SCALER_INPUT_IMG_SIZE) - 1) and AXIS_VIDEO_IN_MOSI.TVALID = '1' and axis_video_in_tready = '1') then      -- End of picture
                    compteur_pixel_scaler <= (others => '0');
                    compteur_line_scaler <= (others => '0');
                    end_of_line <= '0';
                    start_of_frame <= '1';
                elsif (compteur_pixel_scaler = (unsigned(SCALER_INPUT_IMG_SIZE) - 2) and AXIS_VIDEO_IN_MOSI.TVALID = '1' and axis_video_in_tready = '1') then    -- End of picture
                    compteur_pixel_scaler <= compteur_pixel_scaler + 1;
                    compteur_line_scaler  <= compteur_line_scaler + 1;
                    end_of_line <= '1';    
                    start_of_frame <= '0';
                elsif (compteur_line_scaler >= (unsigned(SCALER_INPUT_IMG_WIDTH) - 1) and AXIS_VIDEO_IN_MOSI.TVALID = '1' and axis_video_in_tready = '1') then          -- End of line
                    compteur_pixel_scaler <= compteur_pixel_scaler + 1;
                    compteur_line_scaler  <= (others => '0');
                    end_of_line <= '0'; 
                    start_of_frame <= '0';
                elsif (compteur_line_scaler = (unsigned(SCALER_INPUT_IMG_WIDTH) - 2) and AXIS_VIDEO_IN_MOSI.TVALID = '1' and axis_video_in_tready = '1') then           -- End of line
                    compteur_pixel_scaler <= compteur_pixel_scaler + 1;
                    compteur_line_scaler  <= compteur_line_scaler + 1;
                    end_of_line <= '1';
                    start_of_frame <= '0';
                elsif (AXIS_VIDEO_IN_MOSI.TVALID = '1' and axis_video_in_tready = '1') then
                    compteur_pixel_scaler <= compteur_pixel_scaler + 1;
                    compteur_line_scaler <= compteur_line_scaler + 1;
                    end_of_line <= '0';
                    start_of_frame <= '0';
                else
                    compteur_pixel_scaler <= compteur_pixel_scaler;
                    compteur_line_scaler <= compteur_line_scaler;
                    end_of_line <= end_of_line;
                    start_of_frame <= start_of_frame;
                end if;
            end if;
         end if;
    end process;

end rtl;