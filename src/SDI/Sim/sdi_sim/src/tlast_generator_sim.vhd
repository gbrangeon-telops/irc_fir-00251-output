library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.tel2000.all;

entity tlast_generator_sim is
   port(
      --clk and reset
      clk160         : in std_logic; -- at 100 MHZ
      aresetn        : in std_logic; -- at 160 MHZ

      RX_MOSI : in  t_axi4_stream_mosi32;
      RX_MISO : out t_axi4_stream_miso;
	  
      TX_MOSI : out  t_axi4_stream_mosi32;
      TX_MISO : in t_axi4_stream_miso;
	  
	  Input_Img_Size 	  : in std_logic_vector(31 downto 0)
   );
end tlast_generator_sim;

architecture rtl of tlast_generator_sim is
   attribute KEEP : string;

signal compteur_pixel :   std_logic_vector(31 downto 0);    
signal internal_tlast :   std_logic;
signal input_img_size_i : std_logic_vector(31 downto 0);
        attribute KEEP of input_img_size_i: signal is "true";

begin
	input_img_size_i <= Input_Img_Size;
	
 	tlast_process : process(clk160) 
    begin
         if(rising_edge(clk160)) then
             if aresetn = '0' then
                compteur_pixel <= x"00000000";
				internal_tlast <= '0';
             else
                 if (internal_tlast = '1' and RX_MOSI.TVALID = '1' and TX_MISO.TREADY = '1') then
                      compteur_pixel <= x"00000000";
                      internal_tlast <= '0';      
                 elsif (((compteur_pixel + 1) >= input_img_size_i) and RX_MOSI.TVALID = '1' and TX_MISO.TREADY = '1' and internal_tlast = '0') then
                      compteur_pixel <= compteur_pixel + 1;
                      internal_tlast <= '1';
                 elsif(RX_MOSI.TVALID = '1' and TX_MISO.TREADY = '1') then
                      compteur_pixel <= compteur_pixel + 1;
                      internal_tlast <= '0';
                 else
                     compteur_pixel <= compteur_pixel;
                 end if;
             end if;

          end if;
    end process;
	
	TX_MOSI.TLAST <= internal_tlast;
    TX_MOSI.TVALID <= RX_MOSI.TVALID;
	TX_MOSI.TDATA <= RX_MOSI.TDATA;
	TX_MOSI.TSTRB <= RX_MOSI.TSTRB;
	TX_MOSI.TKEEP <= RX_MOSI.TKEEP;
	TX_MOSI.TID <= RX_MOSI.TID;
	TX_MOSI.TDEST <= RX_MOSI.TDEST;
	TX_MOSI.TUSER <= RX_MOSI.TUSER;

	RX_MISO.TREADY <= TX_MISO.TREADY;

end rtl;
      