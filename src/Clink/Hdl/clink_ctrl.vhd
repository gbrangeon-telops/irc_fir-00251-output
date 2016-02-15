------------------------------------------------------------------
--!   @file clink_CTRL.vhd
--!   @brief Control for CLINK.
--!   @details This file control and read status of the CLINK Interface.
--!
--!   $Rev$
--!   $Author$
--!   $Date$
--!   $Id$
--!   $URL$
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use work.tel2000.all;
use work.clink_define.all;

entity CLINK_CTRL is
   port(
      CLK : in STD_LOGIC;
      ARESETN : in STD_LOGIC;
      
      AXI4_LITE_MOSI : in t_axi4_lite_mosi;
      AXI4_LITE_MISO : out t_axi4_lite_miso;
      
      LB_SYNC_ERROR : in std_logic;
      LB_DECODE_ERROR : in std_logic;
      LB_DATA_CNT : in std_logic_vector(31 downto 0);
      
      LB_WIDTH : out STD_LOGIC_VECTOR(15 downto 0);
      LB_HEIGHT : out STD_LOGIC_VECTOR(15 downto 0);
      
      CLINK_CONF : out CLinkConfig;
      CL_DESYNC_ERR : in std_logic;
      CL_TC_ERR : in std_logic;
      CL_UNDERRUN_ERR : in std_logic;
      
      -- PIN OUTPUT
      CL_ENABLE : out std_logic;
      CL_ENABLE_FULL_N : out std_logic;
      CL_ENABLE_DUAL_N : out std_logic;

      FRAME_RESET : out std_logic
      );
end CLINK_CTRL;

--}} End of automatically maintained section

architecture RTL of CLINK_CTRL is
   
   -- Example-specific design signals
   -- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
   -- ADDR_LSB is used for addressing 32/64 bit registers/memories
   -- ADDR_LSB = 2 for 32 bits (n downto 2)
   -- ADDR_LSB = 3 for 64 bits (n downto 3)
   constant C_S_AXI_DATA_WIDTH : integer := 32;
   constant C_S_AXI_ADDR_WIDTH : integer := 32;
   constant ADDR_LSB  : integer := 2;
   constant OPT_MEM_ADDR_BITS : integer := 4; -- Number of supplement bit
   
   -- Address of registers
   --   constant LB_WIDTH_ADR         : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(0,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant LB_HEIGHT_ADR        : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(4,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant LB_SYNC_ERROR_ADR    : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(8,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant LB_DECODE_ERROR_ADR  : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(12,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant LB_DATACNT_ADR       : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(16,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant CL_LVALSIZE_ADR      : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(20,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant CL_FVALSIZE_ADR      : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(24,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant CL_HEADERSIZE_ADR    : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(28,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant CL_LVALPAUSE_ADR     : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(32,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant CL_FRAMEPERCUBE_ADR  : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(36,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant CL_MODE_ADR          : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(40,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   --   constant CL_HEADERVERSION_ADR : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(44,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));  -- NOT USED IN tel2000
   --   constant CL_ERR_ADR           : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto 0) := std_logic_vector(to_unsigned(48,ADDR_LSB + OPT_MEM_ADDR_BITS + 1));
   
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
   
   component gh_stretch is 
   	generic (
         stretch_count: integer :=1023
      );
   	 port(
   		 CLK : in STD_LOGIC;
   		 rst : in STD_LOGIC;
   		 D : in STD_LOGIC;
   		 Q : out STD_LOGIC
   	     );
   end component;
   
   --! User Input Register Declarations
   signal lb_sync_error_i : std_logic_vector(0 downto 0); --! SYNC Status of the LineFraming Cores
   signal lb_decode_error_i : std_logic_vector(0 downto 0); --! SYNC Status of the LineFraming Cores
   signal lb_datacnt_i : std_logic_vector(31 downto 0); --! FIFO STREAM Data counter
   signal cl_desync_err_i, cl_desync_err_sync : std_logic;
   signal cl_tc_err_i, cl_tc_err_sync : std_logic;
   signal cl_underrun_err_i, cl_underrun_err_sync : std_logic;
   signal cl_err_i : std_logic_vector(3 downto 0);
   
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
   
   signal slv_reg_rden : std_logic;
   signal slv_reg_wren : std_logic;
   signal reg_data_out : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
   signal byte_index	  : integer;
   
   signal sresetn, areset_i : std_logic;
   signal c, config_i  : CLinkConfig;
   signal lb_sync_err_sync : std_logic;
   signal lb_decode_err_sync : std_logic;
   signal lb_data_cnt_sync : std_logic_vector(LB_DATA_CNT'range);
   signal config_valid : std_logic;
   signal axi_wstrb    : std_logic_vector(3 downto 0);
   signal frame_reset_i  : std_logic;
   
   constant ADDR_CLINKMODE   : std_logic_vector(7 downto 0) := x"00";
   constant ADDR_HDERVERSION : std_logic_vector(7 downto 0) := x"04";
   constant ADDR_IMGWIDTH    : std_logic_vector(7 downto 0) := x"08";
   constant ADDR_IMGHEIGHT   : std_logic_vector(7 downto 0) := x"0C";
   constant ADDR_FVALSIZE    : std_logic_vector(7 downto 0) := x"10";
   constant ADDR_LVALPAUSE   : std_logic_vector(7 downto 0) := x"14";
   constant ADDR_FRAMERESET  : std_logic_vector(7 downto 0) := x"18";
   constant ADDR_SYNCERROR   : std_logic_vector(7 downto 0) := x"F0";
   constant ADDR_DECODEERROR : std_logic_vector(7 downto 0) := x"F4";
   constant ADDR_DATACNT     : std_logic_vector(7 downto 0) := x"F8";
   constant ADDR_CLERROR     : std_logic_vector(7 downto 0) := x"FC";
   
begin
   
   -- enter your statements here --
   U0A : sync_resetn port map(ARESETN => ARESETN, SRESETN => sresetn, CLK => CLK);   
   U0B : double_sync port map(D => CL_DESYNC_ERR, Q => cl_desync_err_sync, RESET => '0', CLK => CLK);   
   U0C : double_sync port map(D => CL_TC_ERR, Q => cl_tc_err_sync, RESET => '0', CLK => CLK);   
   U0D : double_sync port map(D => CL_UNDERRUN_ERR, Q => cl_underrun_err_sync, RESET => '0', CLK => CLK);   
   U0E : double_sync port map(D => LB_SYNC_ERROR, Q => lb_sync_err_sync, RESET => '0', CLK => CLK);   
   U0F : double_sync port map(D => LB_DECODE_ERROR, Q => lb_decode_err_sync, RESET => '0', CLK => CLK);   
   U0G : double_sync_vector port map(D => LB_DATA_CNT, Q => lb_data_cnt_sync, CLK => CLK);
   
   -- Output Register Mapped to Output ports
   CLINK_CONF <= config_i;
   
   --Line buffer size come asynchronously from HDR extractor
   --LB_WIDTH <= std_logic_vector(config_i.lb_width(LB_WIDTH'range));
   --LB_HEIGHT <= std_logic_vector(config_i.lb_height(LB_HEIGHT'range));
   LB_WIDTH <= std_logic_vector(config_i.img_width);
   LB_HEIGHT <= std_logic_vector(config_i.img_height + 2);
                    
   CL_ENABLE   <=  '1';
   CL_ENABLE_FULL_N <= not config_i.CLinkMode(0);
   CL_ENABLE_DUAL_N <= not config_i.CLinkMode(3);
   
   -- Input Register Mapped from Input ports
   lb_sync_error_i(0) <= lb_sync_err_sync;
   lb_decode_error_i(0) <= lb_decode_err_sync;
   lb_datacnt_i    <= lb_data_cnt_sync ;
   
   cl_desync_err_i <= cl_desync_err_sync;
   cl_tc_err_i <= cl_tc_err_sync;
   cl_underrun_err_i <= cl_underrun_err_sync;
   cl_err_i(2 downto 0) <= (cl_underrun_err_i & cl_tc_err_i & cl_desync_err_i);
   
   -- I/O Connections assignments
   AXI4_LITE_MISO.AWREADY  <= axi_awready;
   AXI4_LITE_MISO.WREADY   <= axi_wready;
   AXI4_LITE_MISO.BRESP	   <= axi_bresp;
   AXI4_LITE_MISO.BVALID   <= axi_bvalid;
   AXI4_LITE_MISO.ARREADY  <= axi_arready;
   AXI4_LITE_MISO.RDATA	   <= axi_rdata;
   AXI4_LITE_MISO.RRESP	   <= axi_rresp;
   AXI4_LITE_MISO.RVALID   <= axi_rvalid;
   
   areset_i <= not ARESETN;
   stretch_freset: gh_stretch
   	generic map (
         stretch_count => 4
      )
   	 port map (
   		 CLK => CLK,
   		 rst => areset_i,
   		 D => frame_reset_i,
   		 Q => FRAME_RESET
   	 );

   ----------------------------------------------------------------------------
   --  SORTIE CONFIG : 
   ---------------------------------------------------------------------------- 
   U1: process(CLK)
   begin  			
      if rising_edge(CLK) then
         if sresetn = '0' then
            config_i <= clink_cfg_default;
         else
            -- update clink_conf from MB 
            if config_valid = '1' then
               config_i.CLinkMode <= c.CLinkMode;	                
            
               if(c.CLinkMode(CL_FULL_BIT) = CLINK_FULL_MODE(CL_FULL_BIT)) then
                  config_i.LValSize  <=  shift_right(unsigned(c.img_width),2); -- divide by 4 since we transmit 4 pixel at the time(64bit wide)
               else
                  config_i.LValSize  <=  unsigned(c.img_width); -- do not divide 1 pixel at the time(16bit wide)
               end if;
                
               config_i.img_width <= c.img_width;
               config_i.img_height <= c.img_height;
               config_i.FValSize  <= c.FValSize;
               config_i.LValPause <=  c.LValPause;
               config_i.Valid <= true;
            else
                config_i.Valid <= false;
            end if;
            
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
            config_valid <= '0';
            c <= clink_cfg_default;
            frame_reset_i <= '0';
         else
            if (slv_reg_wren = '1') and axi_wstrb = "1111" then
               case axi_awaddr(7 downto 0) is      
                  when ADDR_CLINKMODE   =>  c.CLinkMode     <= unsigned(AXI4_LITE_MOSI.WDATA(c.CLinkMode'length-1 downto 0)); config_valid <= '0';        
                  when ADDR_HDERVERSION =>  c.HeaderVersion <= AXI4_LITE_MOSI.WDATA(c.HeaderVersion'length-1 downto 0); config_valid <= '0';    
                  when ADDR_IMGWIDTH    =>  c.img_width <= unsigned(AXI4_LITE_MOSI.WDATA(c.img_width'length-1 downto 0)); config_valid <= '0';    
                  when ADDR_IMGHEIGHT   =>  c.img_height <= unsigned(AXI4_LITE_MOSI.WDATA(c.img_height'length-1 downto 0)); config_valid <= '0';    
                  when ADDR_FVALSIZE    =>  c.FValSize <= unsigned(AXI4_LITE_MOSI.WDATA(c.FValSize'length-1 downto 0)); config_valid <= '0';    
                  when ADDR_LVALPAUSE   =>  c.LValPause <= unsigned(AXI4_LITE_MOSI.WDATA(c.LValPause'length-1 downto 0)); config_valid <= '1';
                  when ADDR_FRAMERESET	 =>  frame_reset_i <= '1';
                  when others  =>                                                                                 
               end case;
            else
               frame_reset_i <= '0';
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
            when  ADDR_CLINKMODE => reg_data_out <= std_logic_vector(resize(config_i.CLinkMode     , reg_data_out'length));                  
            when  ADDR_HDERVERSION => reg_data_out <= std_logic_vector(resize(config_i.HeaderVersion , reg_data_out'length));           
            when  ADDR_IMGWIDTH => reg_data_out <= std_logic_vector(resize(config_i.img_width     , reg_data_out'length));                  
            when  ADDR_IMGHEIGHT => reg_data_out <= std_logic_vector(resize(config_i.img_height , reg_data_out'length));           
            when  ADDR_FVALSIZE   => reg_data_out <= std_logic_vector(resize(config_i.FValSize , reg_data_out'length));
            when  ADDR_LVALPAUSE   => reg_data_out <= std_logic_vector(resize(config_i.LValPause , reg_data_out'length));
            when  ADDR_SYNCERROR => reg_data_out <= resize(lb_sync_error_i, reg_data_out'length);
            when  ADDR_DECODEERROR => reg_data_out <= resize(lb_decode_error_i, reg_data_out'length);            
            when  ADDR_DATACNT => reg_data_out <= std_logic_vector(resize(lb_datacnt_i, reg_data_out'length));    
            when  ADDR_CLERROR => reg_data_out <= resize(cl_err_i, reg_data_out'length);    
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
