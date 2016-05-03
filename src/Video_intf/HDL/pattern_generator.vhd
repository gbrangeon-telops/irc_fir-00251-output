library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.tel2000.all;


entity pattern_generator is
   port(
      --clk and reset
      clk160         : in std_logic; -- at 100 MHZ
      aresetn        : in std_logic; -- at 160 MHZ
      enable         : in std_logic;
             
      AXIS_MOSI     : out t_axi4_stream_mosi32;
      AXIS_MISO     : in t_axi4_stream_miso
      
   );
end pattern_generator;

architecture rtl of pattern_generator is

signal compteur_test_colormap : std_logic_vector(31 downto 0); 
signal address_test_colormap :  std_logic_vector(9 downto 0);    
signal tvalid_test_colormap :   std_logic_vector(1 downto 0);    
signal tvalid_testcolormap_i : 	std_logic;

begin
   
   pattern_generation : process(clk160) --Generate Address for the Color Map ROM
   begin
       if(rising_edge(clk160)) then
           if (aresetn = '0' or enable = '0') then
              compteur_test_colormap <= x"00000000";
              address_test_colormap <= "0000000000";
              tvalid_test_colormap <= "00";
              tvalid_testcolormap_i <= '0';
              AXIS_MOSI.TSTRB <= (others => '0');
              AXIS_MOSI.TKEEP <= (others => '0');
              AXIS_MOSI.TLAST <= '0';
              AXIS_MOSI.TID   <= (others =>'0');
              AXIS_MOSI.TDEST <= (others =>'0');
              AXIS_MOSI.TUSER <= (others =>'0');
           else
              if AXIS_MISO.TREADY = '1' then 
                 tvalid_test_colormap <= tvalid_test_colormap(0) & compteur_test_colormap(7); --

                 --TLAST need to be delayed to follow tvalid
                 tvalid_testcolormap_i <= tvalid_test_colormap(1);
                 if compteur_test_colormap >= (160000000 / 256) then  -- Run through all pattern during 1 sec interval
	                 compteur_test_colormap <= x"00000000";
	                 address_test_colormap <= address_test_colormap + 1;
                 else
	                 compteur_test_colormap <= compteur_test_colormap + 1;
	                 address_test_colormap <= address_test_colormap;
                 end if;
				 
                 AXIS_MOSI.TSTRB <= (others => '1');
                 AXIS_MOSI.TKEEP <= (others => '1');
                 AXIS_MOSI.TLAST <= '0';
                 AXIS_MOSI.TID   <= (others =>'0');
                 AXIS_MOSI.TDEST <= (others =>'0');
                 AXIS_MOSI.TUSER <= (others =>'0');
              end if;
           end if;
       end if;
  end process pattern_generation;

  -- Two pixels per transfert
  AXIS_MOSI.TDATA(15 downto 0) <= "000000" & address_test_colormap;
  AXIS_MOSI.TDATA(31 downto 16) <= "000000" & address_test_colormap;
  AXIS_MOSI.TVALID <= tvalid_testcolormap_i;

end rtl;
