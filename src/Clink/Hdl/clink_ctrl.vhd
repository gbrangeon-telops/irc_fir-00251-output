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

      CLINK_ERR : std_logic_vector(31 downto 0);

      CLINK_CONF : out CLinkConfig;

      -- PIN OUTPUT
      CL_ENABLE : out std_logic;
      CL_ENABLE_FULL_N : out std_logic;
      CL_ENABLE_DUAL_N : out std_logic;

      FRAME_RESET : out std_logic
      );
end CLINK_CTRL; 

--}} End of automatically maintained section

architecture RTL of CLINK_CTRL is

   constant C_S_AXI_DATA_WIDTH : integer := 32;
   constant C_S_AXI_ADDR_WIDTH : integer := 32;  

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

   signal sresetn, areset_i : std_logic;
   signal config_i  : CLinkConfig;
   signal frame_reset_i  : std_logic;

   constant ADDR_CLINKMODE   : std_logic_vector(7 downto 0) := x"00";
   constant ADDR_CLOCK_MODE   : std_logic_vector(7 downto 0) := x"04";
   constant ADDR_WIDTH       : std_logic_vector(7 downto 0) := x"08";
   constant ADDR_HEIGHT      : std_logic_vector(7 downto 0) := x"0C";
   constant ADDR_LVALSIZE    : std_logic_vector(7 downto 0) := x"10";
   constant ADDR_FVALSIZE    : std_logic_vector(7 downto 0) := x"14";
   constant ADDR_LVALPAUSE   : std_logic_vector(7 downto 0) := x"18";
   constant ADDR_FVALPAUSE   : std_logic_vector(7 downto 0) := x"1C";
   constant ADDR_FRAMERESET  : std_logic_vector(7 downto 0) := x"20";
   constant ADDR_CLERROR     : std_logic_vector(7 downto 0) := x"FC";
   
begin

   -- enter your statements here --
   U0A : sync_resetn port map(ARESETN => ARESETN, SRESETN => sresetn, CLK => CLK);

   -- Output Register Mapped to Output ports
  
   CLINK_CONF <= config_i; 
   
   CL_ENABLE   <=  '1'; 
   CL_ENABLE_FULL_N <= '0' when config_i.CLinkMode = CLINK_FULL_MODE else '1' ;      
   CL_ENABLE_DUAL_N <= '1' when config_i.CLinkMode = CLINK_BASE_MODE else '0' ;

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
   -- AXI WR : contr�le du flow
   ----------------------------------------------------------------------------
   -- (pour l'instant transaction se fait � au max 1 CLK sur 2
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
            config_i.Valid <= '0';
            frame_reset_i <= '0';
         else
            if (slv_reg_wren = '1') and axi_wstrb = "1111" then
               case axi_awaddr(7 downto 0) is 
                  
                  when ADDR_CLINKMODE   =>  config_i.CLinkMode    <=  AXI4_LITE_MOSI.WDATA(config_i.CLinkMode'length -1 downto 0); config_i.Valid <= '0'; 
                  when ADDR_CLOCK_MODE  =>  config_i.CLinkClockMode    <= AXI4_LITE_MOSI.WDATA(0); 
                  when ADDR_WIDTH       =>  config_i.width        <= unsigned(AXI4_LITE_MOSI.WDATA(config_i.width'length-1 downto 0));
                  when ADDR_HEIGHT      =>  config_i.height       <= unsigned(AXI4_LITE_MOSI.WDATA(config_i.height'length-1 downto 0));
                  when ADDR_LVALSIZE    =>  config_i.LValSize     <= unsigned(AXI4_LITE_MOSI.WDATA(config_i.LValSize'length-1 downto 0));
                  when ADDR_FVALSIZE    =>  config_i.FValSize     <= unsigned(AXI4_LITE_MOSI.WDATA(config_i.FValSize'length-1 downto 0));
                  when ADDR_LVALPAUSE   =>  config_i.LValPause    <= unsigned(AXI4_LITE_MOSI.WDATA(config_i.LValPause'length-1 downto 0));
                  when ADDR_FVALPAUSE   =>  config_i.FValPause    <= unsigned(AXI4_LITE_MOSI.WDATA(config_i.FValPause'length-1 downto 0));config_i.Valid <= '1';
                  when ADDR_FRAMERESET	 =>  frame_reset_i         <= '1';
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
   -- RD : controle du flow
   ----------------------------------------------------------------------------
   -- (pour l'instant transaction se fait � au max 1 CLK sur 2  
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
   -- RD : donn�es vers �Blaze
   ----------------------------------------------------------------------------
   U6: process(CLK)
   begin
      if rising_edge(CLK) then     
         case axi_araddr(7 downto 0) is
            when  ADDR_CLINKMODE   => reg_data_out <= std_logic_vector(resize(config_i.CLinkMode, reg_data_out'length));     
            when  ADDR_CLOCK_MODE  => reg_data_out <= std_logic_vector(resize(config_i.CLinkClockMode, reg_data_out'length));
            when  ADDR_WIDTH       => reg_data_out <= std_logic_vector(resize(config_i.width, reg_data_out'length));
            when  ADDR_HEIGHT      => reg_data_out <= std_logic_vector(resize(config_i.height, reg_data_out'length));
            when  ADDR_LVALSIZE    => reg_data_out <= std_logic_vector(resize(config_i.LValSize, reg_data_out'length));
            when  ADDR_FVALSIZE    => reg_data_out <= std_logic_vector(resize(config_i.FValSize, reg_data_out'length));
            when  ADDR_LVALPAUSE   => reg_data_out <= std_logic_vector(resize(config_i.LValPause, reg_data_out'length));
            when  ADDR_FVALPAUSE   => reg_data_out <= std_logic_vector(resize(config_i.FValPause, reg_data_out'length));         
            when  ADDR_CLERROR     => reg_data_out <= resize(CLINK_ERR, reg_data_out'length);
            when others            => reg_data_out <= (others => '0');
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
