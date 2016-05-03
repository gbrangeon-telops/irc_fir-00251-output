-------------------------------------------------------------------------------
--
-- Title       : BadFrameREsync
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
-- Description : This file skip à number X of valid frame before letting the data go to the next interface
-- This should fix the issue with the video scaler
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.TEL2000.all;

entity video_scaler_wrapper is
port(
        video_clk : in std_logic;
        axil_clk : in std_logic;
        core_aresetn : in std_logic;
        video_aresetn : in std_logic;
        video_axil_aresetn : in std_logic;	
		SDI_ResetN : in std_logic;
        axis_video_in_mosi : in t_axi4_stream_mosi32;
        axis_video_in_miso : out t_axi4_stream_miso;
        axis_video_out_mosi : out t_axi4_stream_mosi32;
        axis_video_out_miso : in t_axi4_stream_miso;
        
        axil_mosi : in t_axi4_lite_mosi;
        axil_miso : out t_axi4_lite_miso;

        Scaler_Input_Img_Size : in std_logic_vector(31 downto 0);
        Scaler_Input_Img_Width : in std_logic_vector(31 downto 0)
    );
end video_scaler_wrapper;


architecture rtl of video_scaler_wrapper is

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

signal m_axis_scaler_fifo_tuser : std_logic;
signal m_axis_scaler_fifo_tlast : std_logic;
signal m_axis_scaler_fifo_tvalid : std_logic;
signal m_axis_scaler_fifo_tready : std_logic;
signal compteur_pixel_scaler :   std_logic_vector(31 downto 0);    
signal compteur_line_scaler :   std_logic_vector(31 downto 0);    

signal axil_mosi_i : t_axi4_lite_mosi;
signal axil_miso_i : t_axi4_lite_miso;

begin

axil_mosi_i <= axil_mosi;
axil_miso <= axil_miso_i;

m_axis_scaler_fifo_tvalid <= axis_video_in_mosi.TVALID;
axis_video_in_miso.TREADY <= m_axis_scaler_fifo_tready;

U1 : v_scaler_0
      port map (
        s_axis_video_aclk => video_clk,
        m_axis_video_aclk => video_clk,       
        s_axis_video_aresetn => video_aresetn,
        m_axis_video_aresetn => video_aresetn,
        core_clk => video_clk,
        core_aresetn => core_aresetn,
        
        s_axis_video_tdata => axis_video_in_mosi.TDATA(23 downto 0),
        s_axis_video_tready => m_axis_scaler_fifo_tready, 
        s_axis_video_tvalid => axis_video_in_mosi.TVALID, --  and frame_skip_tpg,-- and frame_skip_tpg,
        s_axis_video_tlast => m_axis_scaler_fifo_tlast,-- and frame_skip_tpg,
        s_axis_video_tuser => m_axis_scaler_fifo_tuser,-- and frame_skip_tpg,
                
        m_axis_video_tdata => axis_video_out_mosi.TDATA(23 downto 0),
        m_axis_video_tvalid => axis_video_out_mosi.TVALID,
        m_axis_video_tready => axis_video_out_miso.TREADY,      
        m_axis_video_tlast => axis_video_out_mosi.TLAST,
        m_axis_video_tuser => axis_video_out_mosi.TUSER(0),
        
        -- Axi4 Lite ports
        s_axi_awaddr => axil_mosi_i.AWADDR(8 downto 0),
        s_axi_aclk => axil_clk,
        s_axi_aresetn => video_axil_aresetn,
        s_axi_awvalid => axil_mosi_i.AWVALID,
        s_axi_awready => axil_miso_i.AWREADY,
        s_axi_wdata => axil_mosi_i.WDATA,
        s_axi_wstrb => axil_mosi_i.WSTRB,
        s_axi_wvalid => axil_mosi_i.WVALID,
        s_axi_wready => axil_miso_i.WREADY,
        s_axi_bresp => axil_miso_i.BRESP,
        s_axi_bvalid => axil_miso_i.BVALID,
        s_axi_bready => axil_mosi_i.BREADY,
        s_axi_araddr => axil_mosi_i.ARADDR(8 downto 0),
        s_axi_arvalid => axil_mosi_i.ARVALID,
        s_axi_arready => axil_miso_i.ARREADY,
        s_axi_rdata => axil_miso_i.RDATA,
        s_axi_rresp => axil_miso_i.RRESP,
        s_axi_rvalid => axil_miso_i.RVALID,
        s_axi_rready => axil_mosi_i.RREADY
      );      
      
    axis_video_out_mosi.TDATA(31 downto 24) <= "00000000";
    axis_video_out_mosi.TUSER(7 downto 1) <= "0000000";
    
    tlast_tuser_proc : process(video_clk) --Count pixels and generate tuser (start of frame) and tlast (end of line) from the frame buffer to video scaler
    begin
--        if compteur_pixel_scaler = 0 and m_axis_scaler_fifo_tvalid = '1' and m_axis_scaler_fifo_tready = '1' then   --Start of frame
--           m_axis_scaler_fifo_tuser <= '1';
--        else
--           m_axis_scaler_fifo_tuser <= '0';
--        end if;
        if(rising_edge(video_clk)) then
            if video_aresetn = '0' then
               compteur_pixel_scaler <= x"00000000";
               compteur_line_scaler <= x"00000000";
               m_axis_scaler_fifo_tlast  <= '0';
               m_axis_scaler_fifo_tuser <= '1';
            else
                if (compteur_pixel_scaler >= ((Scaler_Input_Img_Size) - 1) and m_axis_scaler_fifo_tvalid = '1' and m_axis_scaler_fifo_tready = '1') then      -- End of picture
                    compteur_pixel_scaler <= x"00000000";
                    compteur_line_scaler <= x"00000000";
                    m_axis_scaler_fifo_tlast  <= '0';
                    m_axis_scaler_fifo_tuser <= '1';
                elsif (compteur_pixel_scaler = ((Scaler_Input_Img_Size) - 2) and m_axis_scaler_fifo_tvalid = '1' and m_axis_scaler_fifo_tready = '1') then    -- End of picture
                    compteur_pixel_scaler <= compteur_pixel_scaler + 1;
                    compteur_line_scaler  <= compteur_line_scaler + 1;
                    m_axis_scaler_fifo_tlast  <= '1';    
                    m_axis_scaler_fifo_tuser <= '0';
                elsif (compteur_line_scaler >= (Scaler_Input_Img_Width - 1) and m_axis_scaler_fifo_tvalid = '1' and m_axis_scaler_fifo_tready = '1') then          -- End of line
                    compteur_pixel_scaler <= compteur_pixel_scaler + 1;
                    compteur_line_scaler  <= x"00000000";
                    m_axis_scaler_fifo_tlast  <= '0'; 
                    m_axis_scaler_fifo_tuser <= '0';
                elsif (compteur_line_scaler = (Scaler_Input_Img_Width - 2) and m_axis_scaler_fifo_tvalid = '1' and m_axis_scaler_fifo_tready = '1') then           -- End of line
                    compteur_pixel_scaler <= compteur_pixel_scaler + 1;
                    compteur_line_scaler  <= compteur_line_scaler + 1;
                    m_axis_scaler_fifo_tlast  <= '1';
                    m_axis_scaler_fifo_tuser <= '0';
                elsif(m_axis_scaler_fifo_tvalid = '1' and m_axis_scaler_fifo_tready = '1') then
                    compteur_pixel_scaler <= compteur_pixel_scaler + 1;
                    compteur_line_scaler <= compteur_line_scaler + 1;
                    m_axis_scaler_fifo_tlast  <= '0';
                    m_axis_scaler_fifo_tuser <= '0';
                else
                    compteur_pixel_scaler <= compteur_pixel_scaler;
                    compteur_line_scaler <= compteur_line_scaler;
                    m_axis_scaler_fifo_tlast  <= m_axis_scaler_fifo_tlast;--'0';
                    m_axis_scaler_fifo_tuser <= m_axis_scaler_fifo_tuser;
                end if;
            end if;
         end if;
    end process;

end rtl;