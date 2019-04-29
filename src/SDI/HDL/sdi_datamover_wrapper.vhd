library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library work;
use work.tel2000.all;

--library ieee;
--use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.tel2000.all;
--use work.FB_Define.all;

--ATTENTION awuser, aruser, awid, arid sont déconnecter

entity sdi_datamover_wrapper is
  port (
  --Clk and Reste
  aclk : IN STD_LOGIC;
  --cmdclk : IN STD_LOGIC;
  aresetn : in std_logic;
  
  overflow : in std_logic;
  --mm2s
  axis_mm2s_cmd_mosi : in t_axi4_stream_mosi_cmd32;
  axis_mm2s_cmd_miso : out t_axi4_stream_miso;
  
  axis_mm2s_sts_mosi : out t_axi4_stream_mosi_status;
  axis_mm2s_sts_miso : in  t_axi4_stream_miso;
  
  axi_mm2s_mosi : out t_axi4_a32_read_mosi;
  axi_mm2s_miso : in t_axi4_d32_read_miso;
  
  axis_data_read_mosi : out t_axi4_stream_mosi16;
  axis_data_read_miso : in t_axi4_stream_miso;
  
  --s2mm
  axis_s2mm_cmd_mosi : in t_axi4_stream_mosi_cmd32;
  axis_s2mm_cmd_miso : out t_axi4_stream_miso;
  
  axis_s2mm_sts_mosi : out t_axi4_stream_mosi_status;
  axis_s2mm_sts_miso : in t_axi4_stream_miso;
  
  axi_s2mm_mosi : out t_axi4_a32_d128_write_mosi;
  axi_s2mm_miso : in t_axi4_write_miso;
  
  axis_data_write_mosi : in t_axi4_stream_mosi64;
  axis_data_write_miso : out t_axi4_stream_miso;
  --err
  --bytesReceived : out std_logic_vector(22 downto 0);
  mm2s_err : OUT STD_LOGIC;
  s2mm_err : OUT STD_LOGIC
  );
end sdi_datamover_wrapper;

architecture rtl of sdi_datamover_wrapper is

--COMPONENT vio_0
--        PORT (
--          clk : IN STD_LOGIC;
--          probe_in0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--          probe_in1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--          probe_in2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--          --probe_in2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--		  
--          --probe_in1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
--		  --probe_in2 : IN STD_LOGIC_VECTOR(22 DOWNTO 0)
--          --probe_in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--          --probe_in3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--          --probe_in4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--          --probe_in5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--          --probe_in6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--          --probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
--        );
--        END COMPONENT;

component axi_sdi_fb_datamover
  port (
    m_axi_mm2s_aclk : IN STD_LOGIC;
    m_axi_mm2s_aresetn : IN STD_LOGIC;
    mm2s_err : OUT STD_LOGIC;
    m_axis_mm2s_cmdsts_aclk : IN STD_LOGIC;
    m_axis_mm2s_cmdsts_aresetn : IN STD_LOGIC;
    s_axis_mm2s_cmd_tvalid : IN STD_LOGIC;
    s_axis_mm2s_cmd_tready : OUT STD_LOGIC;
    s_axis_mm2s_cmd_tdata : IN STD_LOGIC_VECTOR(71 DOWNTO 0);
    m_axis_mm2s_sts_tvalid : OUT STD_LOGIC;
    m_axis_mm2s_sts_tready : IN STD_LOGIC;
    m_axis_mm2s_sts_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_mm2s_sts_tkeep : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_mm2s_sts_tlast : OUT STD_LOGIC;
    m_axi_mm2s_arid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mm2s_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mm2s_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_mm2s_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mm2s_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mm2s_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mm2s_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mm2s_aruser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mm2s_arvalid : OUT STD_LOGIC;
    m_axi_mm2s_arready : IN STD_LOGIC;
    m_axi_mm2s_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mm2s_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mm2s_rlast : IN STD_LOGIC;
    m_axi_mm2s_rvalid : IN STD_LOGIC;
    m_axi_mm2s_rready : OUT STD_LOGIC;
    m_axis_mm2s_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_mm2s_tkeep : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axis_mm2s_tlast : OUT STD_LOGIC;
    m_axis_mm2s_tvalid : OUT STD_LOGIC;
    m_axis_mm2s_tready : IN STD_LOGIC;
    m_axi_s2mm_aclk : IN STD_LOGIC;
    m_axi_s2mm_aresetn : IN STD_LOGIC;
    s2mm_err : OUT STD_LOGIC;
    m_axis_s2mm_cmdsts_awclk : IN STD_LOGIC;
    m_axis_s2mm_cmdsts_aresetn : IN STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : IN STD_LOGIC;
    s_axis_s2mm_cmd_tready : OUT STD_LOGIC;
    s_axis_s2mm_cmd_tdata : IN STD_LOGIC_VECTOR(71 DOWNTO 0);
    m_axis_s2mm_sts_tvalid : OUT STD_LOGIC;
    m_axis_s2mm_sts_tready : IN STD_LOGIC;
    m_axis_s2mm_sts_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_s2mm_sts_tkeep : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_s2mm_sts_tlast : OUT STD_LOGIC;
    m_axi_s2mm_awid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_s2mm_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_s2mm_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_s2mm_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_s2mm_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_s2mm_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_awuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_awvalid : OUT STD_LOGIC;
    m_axi_s2mm_awready : IN STD_LOGIC;
    m_axi_s2mm_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_s2mm_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_s2mm_wlast : OUT STD_LOGIC;
    m_axi_s2mm_wvalid : OUT STD_LOGIC;
    m_axi_s2mm_wready : IN STD_LOGIC;
    m_axi_s2mm_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_s2mm_bvalid : IN STD_LOGIC;
    m_axi_s2mm_bready : OUT STD_LOGIC;
    s_axis_s2mm_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axis_s2mm_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_s2mm_tlast : IN STD_LOGIC;
    s_axis_s2mm_tvalid : IN STD_LOGIC;
    s_axis_s2mm_tready : OUT STD_LOGIC
  );
end component;	

signal dataMoverTData : std_logic_vector(31 downto 0);
signal dataMoverTKeep : std_logic_vector(3 downto 0);

signal dataCount : std_logic_vector(23 downto 0);
signal internal_tlast : std_logic;
signal dataCountOut : std_logic_vector(23 downto 0);
signal overflowPixelCountOut : std_logic_vector(23 downto 0);
signal clkCountOneFrameStart : std_logic;
signal clkCountOneFrameOut : std_logic_vector(31 downto 0);

signal s2mm_tready : std_logic;
signal s2mm_tready_countProcess : std_logic;

signal tlastDetect : std_logic;
signal overflowDetect : std_logic;
signal overflowVector : std_logic_vector(0 downto 0);
signal tvalidVector : std_logic_vector(0 downto 0);
signal rx_tready : std_logic_vector(0 downto 0);
signal overflowRisingEdgeDetect : std_logic_vector(2 downto 0);

 
begin  

--axis_s2mm_sts_mosi.tdata <= dataMoverTData(7 downto 0);
--axis_s2mm_sts_mosi.tkeep <= dataMoverTKeep(0 downto 0);

--axis_data_write_miso.tready <= '1';
--s2mm_tready_countProcess <= '1';	   


--axis_data_write_miso.tready <= s2mm_tready;
--s2mm_tready_countProcess <= s2mm_tready;
--rx_tready(0) <= axis_data_write_mosi.tvalid;
--
--
--tvalidVector(0) <= axis_data_write_mosi.tvalid;
--overflowVector(0) <= overflow;

--bytesReceived            <= dataMoverTData(30 downto 8);

fb_datamover : axi_sdi_fb_datamover
  PORT MAP (
  --ACLK AND RESET
    m_axi_mm2s_aclk              => aclk,
    m_axi_mm2s_aresetn           => aresetn,
    m_axis_mm2s_cmdsts_aclk      => aclk,
	 --m_axis_mm2s_cmdsts_aclk      => cmdclk,
    m_axis_mm2s_cmdsts_aresetn   => aresetn,
    m_axi_s2mm_aclk              => aclk,
    m_axi_s2mm_aresetn           => aresetn,
    m_axis_s2mm_cmdsts_awclk     => aclk,
	 --m_axis_s2mm_cmdsts_awclk     => cmdclk,
    m_axis_s2mm_cmdsts_aresetn   => aresetn,
    --ERROR
    s2mm_err                     => s2mm_err,
    mm2s_err                     => mm2s_err,
    
    --STREAM
    s_axis_mm2s_cmd_tvalid       => axis_mm2s_cmd_mosi.tvalid,
    s_axis_mm2s_cmd_tready       => axis_mm2s_cmd_miso.tready,
    s_axis_mm2s_cmd_tdata        => axis_mm2s_cmd_mosi.tdata,

    m_axis_mm2s_sts_tvalid       => axis_mm2s_sts_mosi.tvalid,
    m_axis_mm2s_sts_tready       => axis_mm2s_sts_miso.tready,
    m_axis_mm2s_sts_tdata        => axis_mm2s_sts_mosi.tdata,
    m_axis_mm2s_sts_tkeep        => axis_mm2s_sts_mosi.tkeep,
    m_axis_mm2s_sts_tlast        => axis_mm2s_sts_mosi.tlast,
    
    m_axi_mm2s_arid              => axi_mm2s_mosi.arid,
    m_axi_mm2s_araddr            => axi_mm2s_mosi.araddr,
    m_axi_mm2s_arlen             => axi_mm2s_mosi.arlen,
    m_axi_mm2s_arsize            => axi_mm2s_mosi.arsize,
    m_axi_mm2s_arburst           => axi_mm2s_mosi.arburst,
    m_axi_mm2s_arprot            => axi_mm2s_mosi.arprot,
    m_axi_mm2s_arcache           => axi_mm2s_mosi.arcache,
    --m_axi_mm2s_aruser            => axi_mm2s_mosi.aruser,
    m_axi_mm2s_arvalid           => axi_mm2s_mosi.arvalid,
    m_axi_mm2s_arready           => axi_mm2s_miso.arready,
    m_axi_mm2s_rdata             => axi_mm2s_miso.rdata,
    m_axi_mm2s_rresp             => axi_mm2s_miso.rresp,
    m_axi_mm2s_rlast             => axi_mm2s_miso.rlast,
    m_axi_mm2s_rvalid            => axi_mm2s_miso.rvalid,
    m_axi_mm2s_rready            => axi_mm2s_mosi.rready,
    
    m_axis_mm2s_tdata            => axis_data_read_mosi.tdata,
    m_axis_mm2s_tkeep            => axis_data_read_mosi.tkeep,
    m_axis_mm2s_tlast            => axis_data_read_mosi.tlast,
    m_axis_mm2s_tvalid           => axis_data_read_mosi.tvalid,
    m_axis_mm2s_tready           => axis_data_read_miso.tready,
    

    
    s_axis_s2mm_cmd_tvalid       => axis_s2mm_cmd_mosi.tvalid,
    s_axis_s2mm_cmd_tready       => axis_s2mm_cmd_miso.tready,
    s_axis_s2mm_cmd_tdata        => axis_s2mm_cmd_mosi.tdata,
    
    m_axis_s2mm_sts_tvalid       => axis_s2mm_sts_mosi.tvalid,
    m_axis_s2mm_sts_tready       => axis_s2mm_sts_miso.tready,
    m_axis_s2mm_sts_tdata        => axis_s2mm_sts_mosi.tdata,
    m_axis_s2mm_sts_tkeep        => axis_s2mm_sts_mosi.tkeep,
    --m_axis_s2mm_sts_tdata        => dataMoverTData,
    --m_axis_s2mm_sts_tkeep        => dataMoverTKeep,
    m_axis_s2mm_sts_tlast        => axis_s2mm_sts_mosi.tlast,
    
    m_axi_s2mm_awid              => axi_s2mm_mosi.awid,
    m_axi_s2mm_awaddr            => axi_s2mm_mosi.awaddr,
    m_axi_s2mm_awlen             => axi_s2mm_mosi.awlen,
    m_axi_s2mm_awsize            => axi_s2mm_mosi.awsize,
    m_axi_s2mm_awburst           => axi_s2mm_mosi.awburst,
    m_axi_s2mm_awprot            => axi_s2mm_mosi.awprot,
    m_axi_s2mm_awcache           => axi_s2mm_mosi.awcache,
    --m_axi_s2mm_awuser            => axi_s2mm_mosi.awuser,
    m_axi_s2mm_awvalid           => axi_s2mm_mosi.awvalid,
    m_axi_s2mm_awready           => axi_s2mm_miso.awready,
    m_axi_s2mm_wdata             => axi_s2mm_mosi.wdata,
    m_axi_s2mm_wstrb             => axi_s2mm_mosi.wstrb,
    m_axi_s2mm_wlast             => axi_s2mm_mosi.wlast,
    m_axi_s2mm_wvalid            => axi_s2mm_mosi.wvalid,
    m_axi_s2mm_wready            => axi_s2mm_miso.wready,
    m_axi_s2mm_bresp             => axi_s2mm_miso.bresp,
    m_axi_s2mm_bvalid            => axi_s2mm_miso.bvalid,
    m_axi_s2mm_bready            => axi_s2mm_mosi.bready,

    s_axis_s2mm_tdata            => axis_data_write_mosi.tdata,
    s_axis_s2mm_tkeep            => axis_data_write_mosi.tkeep,
    --s_axis_s2mm_tlast            => internal_tlast,  
	s_axis_s2mm_tlast            => axis_data_write_mosi.tlast, 
    s_axis_s2mm_tvalid           => axis_data_write_mosi.tvalid,
    --s_axis_s2mm_tready           => s2mm_tready
	s_axis_s2mm_tready           => axis_data_write_miso.tready
  );
  
--    tlast : process(aclk)
--       begin
--          if rising_edge(aclk) then
--             if aresetn = '0' then
--                dataCount <= "000000000000000000000000";
--                internal_tlast <= '0';
----                dataCountOut <= "000000000000000000000000";
----                overflowPixelCountOut <= "000000000000000000000000";
----                clkCountOneFrameOut <= x"00000000";
----                clkCountOneFrameStart <= '0';
----                tlastDetect  <= '0';
----                overflowDetect <= '0';
--             else
--                if axis_data_write_mosi.tvalid = '1' and s2mm_tready_countProcess = '1'  and dataCount >= ( x"0A0000" - 1) then 
--                   dataCount  <= "000000000000000000000000";   
--                   internal_tlast <= '0';
--                elsif axis_data_write_mosi.tvalid = '1' and s2mm_tready_countProcess = '1'  and dataCount = ( x"0A0000" - 2) then 
--                   dataCount  <= dataCount + 1;   
--                   internal_tlast <= '1';           
--                elsif axis_data_write_mosi.tvalid = '1' and s2mm_tready_countProcess = '1' then
--                   dataCount  <= dataCount + 1;
--                   internal_tlast <= '0';
--                else
--                   dataCount  <= dataCount;
--                   internal_tlast <= internal_tlast;
--                end if;
--             end if; 
--		end if;
--    end process;
                    
--    Count : process(aclk)
--     begin
--        if rising_edge(aclk) then
--           if aresetn = '0' then
--              dataCount <= "000000000000000000000000";
--              dataCountOut <= "000000000000000000000000";
--              overflowPixelCountOut <= "000000000000000000000000";
--              clkCountOneFrameOut <= x"00000000";
--              clkCountOneFrameStart <= '0';
--              tlastDetect  <= '0';
--              overflowDetect <= '0';
--           else
--              overflowRisingEdgeDetect <= overflowRisingEdgeDetect(1 downto 0) & overflowDetect;
--              if overflowRisingEdgeDetect(2) = '0' and overflowRisingEdgeDetect(1) = '1' then 
--                overflowPixelCountOut <= dataCount;
--              else
--                overflowPixelCountOut <= overflowPixelCountOut;
--              end if;          
           
--              if axis_data_write_mosi.tvalid = '1' and s2mm_tready_countProcess = '1' and axis_data_write_mosi.tlast = '0' and dataCount < x"0A0000"   then -- start of new frame
--                  dataCount <= dataCount + 1;
--                  dataCountOut <= dataCountOut;
--                  tlastDetect  <= tlastDetect;
--                  clkCountOneFrameOut <= clkCountOneFrameOut + 1;
--                  clkCountOneFrameStart <= '1';
--                  if overflow = '1' then
--                    overflowDetect <= '1';
--                  else
--                    overflowDetect <= overflowDetect;
--                  end if;
--              elsif axis_data_write_mosi.tvalid = '1' and s2mm_tready_countProcess = '1' and axis_data_write_mosi.tlast = '1' and dataCount < x"0A0000"  then -- start of new line
--                 --dataCount <= "00000000000000000000000";
--                 dataCount <= dataCount + 1;
--                 dataCountOut <= dataCount + 1;
--                 tlastDetect  <= '1';
--                 clkCountOneFrameOut <= clkCountOneFrameOut + 1;
--                 clkCountOneFrameStart <= clkCountOneFrameStart;
--                  if overflow = '1' then
--                     overflowDetect <= '1';
--                   else
--                     overflowDetect <= overflowDetect;
--                   end if;
--              elsif dataCount < x"0A0000" then              
--                 dataCount <= dataCount;
--                 dataCountOut <= dataCountOut; 
--                 tlastDetect  <= tlastDetect;
--                 if clkCountOneFrameStart = '1' then
--                     clkCountOneFrameOut <= clkCountOneFrameOut + 1;
--                 else
--                     clkCountOneFrameOut <= clkCountOneFrameOut ;
--                 end if;
--                 clkCountOneFrameStart <= clkCountOneFrameStart;
--                 if overflow = '1' then
--                    overflowDetect <= '1';
--                 else
--                    overflowDetect <= overflowDetect;
--                 end if; 
--              else 
--                 dataCount <= dataCount;
--                 dataCountOut <= dataCountOut; 
--                 tlastDetect  <= tlastDetect; 
--                 overflowDetect <= overflowDetect;  
--                 clkCountOneFrameOut <= clkCountOneFrameOut;    
--                 clkCountOneFrameStart <= '0';       
--              end if;
--           end if;
--        end if;
--     end process;
    
  
             -- your_instance_name : vio_0
--         PORT MAP (
--           clk => aclk,
--           --probe_in0 => "00" & overflow & tlastDetect & "00000" & overflowPixelCountOut(22 downto 0)
--           --probe_in0 => clkCountOneFrameOut,--"00" & overflow & tlastDetect & "00000" & overflowPixelCountOut(22 downto 0)
--           probe_in0 => overflowVector,--clkCountOneFrameOut,--"00" & overflow & tlastDetect & "00000" & overflowPixelCountOut(22 downto 0)
--           --probe_in1 => dataCount
--           probe_in1 => tvalidVector
--           --probe_in2 => tvalidVector
--           --probe_in1 => mm2s_err_o  
--  		 --probe_in2 => bytesReceived
--           --probe_in2 => s2mm_bytes_xfer_o
--           --probe_in2 => Start_Pixel_s(2), 
--           --probe_in3 => Width_Pixel_s(2),
--           --probe_in4 => Start_Line_s(2),
--           --probe_in5 => Stop_Line_s(2),
--           --probe_in6 => imgsize_s,
--           --probe_out0 => open
--         );

  
	--axis_data_read_mosi.TVALID <= axis_videostream_out_mosi_lite.TVALID;
	--axis_data_read_mosi.TDATA <= axis_videostream_out_mosi_lite.TDATA;
	--axis_data_read_mosi.TKEEP <= axis_videostream_out_mosi_lite.TKEEP;
	--axis_data_read_mosi.TLAST <= axis_videostream_out_mosi_lite.TLAST;
	axis_data_read_mosi.TSTRB <= (others => '1');
	axis_data_read_mosi.TID <= (others => '0');
	axis_data_read_mosi.TDEST <= (others => '0');
	axis_data_read_mosi.TUSER <= (others => '0');
end rtl;