-------------------------------------------------------------------------------
--
-- Title       : hdr_manager
-- Design      : 
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : 
-- Generated   : Wed Aug 15 07:58:26 2018
-- From        : interface description file
-- By          : Philippe Couture
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.Tel2000.all;
use work.calib_define.all;

entity hdr_manager is 
    port(
      RX_MOSI  : in  t_axi4_stream_mosi64;
      RX_MISO  : out t_axi4_stream_miso;  
      TX_MOSI  : out  t_axi4_stream_mosi64;
      TX_MISO  : in t_axi4_stream_miso;
      
      GEN_TID : out std_logic;
      ARESETN  : in  std_logic;
      CLK      : in  std_logic     
   );  
end hdr_manager;



architecture hdr_manager of hdr_manager is

   signal sresetn   : std_logic;
   signal areset   : std_logic;
   signal gen_tid_o   : std_logic; 
   attribute keep of gen_tid_o : signal is "TRUE";
   
   signal rx_mosi_i: t_axi4_stream_mosi64;
   signal rx_miso_i: t_axi4_stream_miso;
   signal tx_mosi_i: t_axi4_stream_mosi64;
   signal tx_miso_i: t_axi4_stream_miso;
   
   signal valid_tlast : std_logic;
   
   signal miso_o : t_axi4_stream_miso;
   attribute keep of miso_o : signal is "TRUE";
   
   component sync_resetn
      port(
         ARESETN : in std_logic;
         SRESETN : out std_logic;
         CLK    : in std_logic);
   end component; 
   
   component axis64_reg is
      port(
         RX_MOSI  : in  t_axi4_stream_mosi64;
         RX_MISO  : out t_axi4_stream_miso;
         TX_MOSI  : out  t_axi4_stream_mosi64;
         TX_MISO  : in t_axi4_stream_miso;
         
         ARESETN  : in  std_logic;
         CLK      : in  std_logic     
         );
   end component;
   
begin 
   
   GEN_TID <= gen_tid_o;
   
   
   REG : axis64_reg
   port map(
      RX_MOSI => rx_mosi_i,
      RX_MISO => rx_miso_i,
      TX_MOSI => tx_mosi_i,
      TX_MISO => tx_miso_i,
      ARESETN => ARESETN,
      CLK     => CLK
      );

   rx_mosi_i <= RX_MOSI;
   RX_MISO <= rx_miso_i;
   
   
   tx_miso_i.TREADY  <= TX_MISO.TREADY when gen_tid_o = '0' else '1'; -- discard header data 
      
   TX_MOSI.TDATA   <= tx_mosi_i.TDATA;  
   TX_MOSI.TSTRB   <= tx_mosi_i.TSTRB;  
   TX_MOSI.TKEEP   <= tx_mosi_i.TKEEP;  
   TX_MOSI.TLAST   <= tx_mosi_i.TLAST;  
   TX_MOSI.TID     <= tx_mosi_i.TID;    
   TX_MOSI.TDEST   <= tx_mosi_i.TDEST;  
   TX_MOSI.TUSER   <= tx_mosi_i.TUSER;         
   
   TX_MOSI.TVALID <= tx_mosi_i.TVALID when gen_tid_o = '0' else '0'; -- discard header data   
      
   -- Reset synchronization
   U1: sync_resetn
   port map(
      ARESETN => ARESETN,
      CLK    => CLK,
      SRESETN => sresetn
      );   
    
   -- HDR Detection
   valid_tlast <= tx_mosi_i.TLAST and tx_mosi_i.TVALID and TX_MISO.TREADY;
 
   HDR_DET : process(CLK)
   begin
      if rising_edge(CLK) then
         if sresetn = '0' then
            gen_tid_o <= '1'; -- start with header 
         elsif valid_tlast = '1' then     -- end of header/image
            gen_tid_o <= not gen_tid_o;    -- invert tid
         else
            gen_tid_o <= gen_tid_o;
         end if; 
      end if;
   end process;     
   
 end hdr_manager;
