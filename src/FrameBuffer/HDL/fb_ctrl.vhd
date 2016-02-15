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
      
      MM2S_ERR : in std_logic_vector(4 downto 0);
      S2MM_ERR : in std_logic_vector(4 downto 0);
      
      FB_MODE : out STD_LOGIC_VECTOR(2 downto 0);
      FRAME_WIDTH : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      FRAME_HEIGHT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      
      BASE_ADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      FRAME_SIZE : out std_logic_vector (31 downto 0);
      HDR_SIZE : out std_logic_vector (31 downto 0);
      IMG_SIZE : out std_logic_vector (31 downto 0);
      CONFIG_VALID : out std_logic
      );
end FB_CTRL;

--}} End of automatically maintained section

architecture RTL of FB_CTRL is
   
   -- Example-specific design signals
   -- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
   -- ADDR_LSB is used for addressing 32/64 bit registers/memories
   -- ADDR_LSB = 2 for 32 bits (n downto 2)
   -- ADDR_LSB = 3 for 64 bits (n downto 3)
  constant C_S_AXI_DATA_WIDTH : integer := 32;
  constant C_S_AXI_ADDR_WIDTH : integer := 32;
  constant ADDR_LSB  : integer := 2;
  constant OPT_MEM_ADDR_BITS : integer := 5;  --Number of supplement bit
--   
   -- Address of registers
      
   constant FB_MODE_ADDR            : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(0,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   constant FRAME_WIDTH_ADDR        : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(4,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   constant FRAME_HEIGHT_ADDR       : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(8,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   constant BASE_SADDR_ADDR         : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(12,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   constant FRAMESIZE_ADDR          : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(16,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   constant HDR_SIZE_ADDR           : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(20,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   constant IMG_SIZE_ADDR           : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(24,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   constant CONFIGVALID_ADDR        : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(28,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   constant DM_ERR_ADDR             : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(240,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));

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
   

   --! User Input Register Declarations
   signal fb_mm2s_err : std_logic_vector(4 downto 0); --! mm2s fb error
   signal fb_s2mm_err : std_logic_vector(4 downto 0); --! s2mm fb error

   --! User Output Register Declarations
   signal fb_mode_o : std_logic_vector(2 downto 0); 
   signal frame_width_o : std_logic_vector(15 downto 0); 
   signal frame_height_o : std_logic_vector(15 downto 0);
   
   signal base_addr_o : std_logic_vector(31 downto 0);
   signal frame_size_o : std_logic_vector(31 downto 0);
   signal hdr_size_o : std_logic_vector(31 downto 0);
   signal img_size_o : std_logic_vector(31 downto 0);
   signal config_valid_o : std_logic_vector(0 downto 0);
    
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
   signal byte_index	  : integer;
   
   signal sresetn      : std_logic;
   
   
begin
   
   -- enter your statements here --
   U0A : sync_resetn port map(ARESETN => ARESETN, SRESETN => sresetn, CLK => CLK);   
   U0B : double_sync_vector port map(D => MM2S_ERR, Q => fb_mm2s_err , CLK => CLK);   
   U0C : double_sync_vector port map(D => S2MM_ERR, Q => fb_s2mm_err, CLK => CLK);   

   -- I/O Connections assignments
   AXI4_LITE_MISO.AWREADY  <= axi_awready;
   AXI4_LITE_MISO.WREADY   <= axi_wready;
   AXI4_LITE_MISO.BRESP	   <= axi_bresp;
   AXI4_LITE_MISO.BVALID   <= axi_bvalid;
   AXI4_LITE_MISO.ARREADY  <= axi_arready;
   AXI4_LITE_MISO.RDATA	   <= axi_rdata;
   AXI4_LITE_MISO.RRESP	   <= axi_rresp;
   AXI4_LITE_MISO.RVALID   <= axi_rvalid;
   
         
   FB_MODE           <= fb_mode_o ;
   FRAME_WIDTH       <= frame_width_o ;
   FRAME_HEIGHT      <= frame_height_o;
   
   BASE_ADDR         <= base_addr_o;
   FRAME_SIZE        <= frame_size_o;
   HDR_SIZE          <= hdr_size_o;
   IMG_SIZE          <= img_size_o;
   CONFIG_VALID      <= config_valid_o(0);
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
            fb_mode_o <= FBMODE_STANDBYT_c;
            frame_width_o <= (others => '0');
            frame_height_o <= (others => '0');
            base_addr_o <= (others => '0');
            frame_size_o <= (others => '0');
            hdr_size_o <= (others => '0');
            img_size_o <= (others => '0');
            config_valid_o <= (others => '0');
         else
            if (slv_reg_wren = '1') and axi_wstrb = "1111" then
               case axi_awaddr(7 downto 0) is      
                  when FB_MODE_ADDR       =>  fb_mode_o        <= AXI4_LITE_MOSI.WDATA(fb_mode_o'length-1 downto 0);
                  when FRAME_WIDTH_ADDR   =>  frame_width_o    <= AXI4_LITE_MOSI.WDATA(frame_width_o'length-1 downto 0);
                  when FRAME_HEIGHT_ADDR  =>  frame_height_o   <= AXI4_LITE_MOSI.WDATA(frame_height_o'length-1 downto 0); 
                  when BASE_SADDR_ADDR    =>  base_addr_o      <= AXI4_LITE_MOSI.WDATA(base_addr_o'length-1 downto 0);
                  when FRAMESIZE_ADDR     =>  frame_size_o     <= AXI4_LITE_MOSI.WDATA(frame_size_o'length-1 downto 0);
                  when HDR_SIZE_ADDR      =>  hdr_size_o       <= AXI4_LITE_MOSI.WDATA(hdr_size_o'length-1 downto 0);
                  when IMG_SIZE_ADDR      =>  img_size_o       <= AXI4_LITE_MOSI.WDATA(img_size_o'length-1 downto 0);
                  when CONFIGVALID_ADDR   =>  config_valid_o   <= AXI4_LITE_MOSI.WDATA(config_valid_o'length-1 downto 0);
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
   slv_reg_rden <= axi_arready and AXI4_LITE_MOSI.ARVALID and (not axi_rvalid);
   
   ---------------------------------------------------------------------------- 
   -- RD : données vers µBlaze                                       
   ---------------------------------------------------------------------------- 
   U6: process(CLK)
   begin
      if rising_edge(CLK) then         
         case axi_araddr(7 downto 0) is
            when  FB_MODE_ADDR      => reg_data_out <= std_logic_vector(resize(fb_mode_o     , reg_data_out'length));                  
            when  FRAME_WIDTH_ADDR  => reg_data_out <= std_logic_vector(resize(frame_width_o , reg_data_out'length));           
            when  FRAME_HEIGHT_ADDR => reg_data_out <= std_logic_vector(resize(frame_height_o     , reg_data_out'length));       
            when  BASE_SADDR_ADDR   => reg_data_out <= std_logic_vector(resize(base_addr_o, reg_data_out'length));    
            when  FRAMESIZE_ADDR    => reg_data_out <= std_logic_vector(resize(frame_size_o, reg_data_out'length));
            when  HDR_SIZE_ADDR     => reg_data_out <= std_logic_vector(resize(hdr_size_o, reg_data_out'length));
            when  IMG_SIZE_ADDR     => reg_data_out <= std_logic_vector(resize(img_size_o, reg_data_out'length));
            when  CONFIGVALID_ADDR  => reg_data_out <= std_logic_vector(resize(config_valid_o, reg_data_out'length));
            when  DM_ERR_ADDR       => reg_data_out <= std_logic_vector(resize((fb_mm2s_err & fb_s2mm_err)     , reg_data_out'length)); 
            when others             => reg_data_out <= (others => '0');
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
