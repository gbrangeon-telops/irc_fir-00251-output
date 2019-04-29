------------------------------------------------------------------
--!   @file FB_CTRL.vhd
--!   @brief Control for FrameBuffer.
--!   @details This file control and monitor the FrameBuffer
--!
--!   $Rev$
--!   $Author$
--!   $Date$
--!   $Id$
--!   $URL: http://einstein/svn/firmware/FIR-00251-Output/trunk/src/Clink/Hdl/clink_ctrl.vhd $
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use work.tel2000.all;
use work.FB_define.all;


entity FB_CTRL is
   port(
      CLK : in STD_LOGIC;
      ARESETN : in STD_LOGIC;
      
      AXI4_LITE_MOSI : in t_axi4_lite_mosi;
      AXI4_LITE_MISO : out t_axi4_lite_miso;
      
      FB_ERR : in std_logic_vector(31 downto 0);
      
      FB_CONF : out FB_Config
   );
end FB_CTRL;


architecture RTL of FB_CTRL is
   
  constant C_S_AXI_DATA_WIDTH : integer := 32;
  constant C_S_AXI_ADDR_WIDTH : integer := 32;
   
   -- Address of registers
      
   constant FB_MODE_ADDR                  : std_logic_vector(7 downto 0) := x"00";
   constant FB_BASE_ADDR_ADDR             : std_logic_vector(7 downto 0) := x"04";
   constant FB_FRAME_SIZE_ADDR            : std_logic_vector(7 downto 0) := x"08";
   constant FB_HDR_SIZE_ADDR              : std_logic_vector(7 downto 0) := x"0C";
   constant FB_IMG_SIZE_ADDR              : std_logic_vector(7 downto 0) := x"10";
   constant FB_CONFIG_VALID_ADDR          : std_logic_vector(7 downto 0) := x"14";
   
   constant FB_ERR_ADDR                   : std_logic_vector(7 downto 0) := x"F0";

   component double_sync
      generic(
         INIT_VALUE : BIT := '0');
      port(
         D : in STD_LOGIC;
         Q : out STD_LOGIC;
         RESET : in STD_LOGIC;
         CLK : in STD_LOGIC);
   end component;
   
   component sync_resetn is
      port(
         ARESETN : in STD_LOGIC;
         SRESETN : out STD_LOGIC;
         CLK : in STD_LOGIC
         );
   end component;
   

   --! User Output Register Declarations
   signal fb_conf_i : FB_Config;
    
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
   
   signal sresetn      : std_logic;
   
   
begin
   
   -- enter your statements here --
   U0A : sync_resetn port map(ARESETN => ARESETN, SRESETN => sresetn, CLK => CLK);   

   -- I/O Connections assignments
   AXI4_LITE_MISO.AWREADY  <= axi_awready;
   AXI4_LITE_MISO.WREADY   <= axi_wready;
   AXI4_LITE_MISO.BRESP	   <= axi_bresp;
   AXI4_LITE_MISO.BVALID   <= axi_bvalid;
   AXI4_LITE_MISO.ARREADY  <= axi_arready;
   AXI4_LITE_MISO.RDATA	   <= axi_rdata;
   AXI4_LITE_MISO.RRESP	   <= axi_rresp;
   AXI4_LITE_MISO.RVALID   <= axi_rvalid;
   
         
   FB_CONF <= fb_conf_i;
   
   ----------------------------------------------------------------------------
   -- AXI WR : contrôle du flow 
   ---------------------------------------------------------------------------- 
   -- (pour l'instant transaction se fait à au max 1 CLK sur 2 
   U2: process (CLK)
   begin
      if rising_edge(CLK) then 
         if sresetn = '0' then
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
         if sresetn = '0' then
            fb_conf_i.config_valid <= '0';
         else
            if (slv_reg_wren = '1') and axi_wstrb = "1111" then
               case axi_awaddr(7 downto 0) is      
                  when FB_MODE_ADDR                =>  fb_conf_i.fb_mode               <= AXI4_LITE_MOSI.WDATA(fb_conf_i.fb_mode'length-1 downto 0);
                  when FB_BASE_ADDR_ADDR           =>  fb_conf_i.base_addr             <= unsigned(AXI4_LITE_MOSI.WDATA(fb_conf_i.base_addr'length-1 downto 0));
                  when FB_FRAME_SIZE_ADDR          =>  fb_conf_i.frame_size            <= unsigned(AXI4_LITE_MOSI.WDATA(fb_conf_i.frame_size'length-1 downto 0));
                  when FB_HDR_SIZE_ADDR            =>  fb_conf_i.hdr_size              <= unsigned(AXI4_LITE_MOSI.WDATA(fb_conf_i.hdr_size'length-1 downto 0));
                  when FB_IMG_SIZE_ADDR            =>  fb_conf_i.img_size              <= unsigned(AXI4_LITE_MOSI.WDATA(fb_conf_i.img_size'length-1 downto 0));
                  when FB_CONFIG_VALID_ADDR        =>  fb_conf_i.config_valid          <= AXI4_LITE_MOSI.WDATA(0);
                  when others  =>                  
               end case;                                                                                          
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
         if sresetn = '0' then
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
         if sresetn = '0' then
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
            when FB_MODE_ADDR                => reg_data_out <= std_logic_vector(resize(fb_conf_i.fb_mode, reg_data_out'length));
            when FB_BASE_ADDR_ADDR           => reg_data_out <= std_logic_vector(resize(fb_conf_i.base_addr, reg_data_out'length));
            when FB_FRAME_SIZE_ADDR          => reg_data_out <= std_logic_vector(resize(fb_conf_i.frame_size, reg_data_out'length));
            when FB_HDR_SIZE_ADDR            => reg_data_out <= std_logic_vector(resize(fb_conf_i.hdr_size, reg_data_out'length));
            when FB_IMG_SIZE_ADDR            => reg_data_out <= std_logic_vector(resize(fb_conf_i.img_size, reg_data_out'length));
            when FB_CONFIG_VALID_ADDR        => reg_data_out <= std_logic_vector(resize(fb_conf_i.config_valid, reg_data_out'length));
            when FB_ERR_ADDR                 => reg_data_out <= std_logic_vector(resize(FB_ERR, reg_data_out'length));
            when others                      => reg_data_out <= (others => '0');
         end case;        
      end if;     
   end process;  
   
   ---------------------------------------------------------------------------- 
   -- Axi RD responses                                      
   ---------------------------------------------------------------------------- 
   U7: process (CLK)
   begin
      if rising_edge(CLK) then
         if sresetn = '0' then
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
   
end RTL;
