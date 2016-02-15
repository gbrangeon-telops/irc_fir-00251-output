library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use IEEE.NUMERIC_STD.all;
use work.tel2000.all;


entity mgt_pattern_sim is
   port(
      --clk and reset
      CLK160         : in std_logic; -- at 100 MHZ
      ARESETN        : in std_logic; -- at 160 MHZ
      ENABLE         : in std_logic;
      
      IMG_WIDTH     : in std_logic_vector(31 downto 0);
      IMG_HEIGTH     : in std_logic_vector(31 downto 0);
             
      AXIS_MOSI     : out t_axi4_stream_mosi32;
      AXIS_MISO     : in t_axi4_stream_miso
      
   );
end mgt_pattern_sim;

architecture rtl of mgt_pattern_sim is

signal h_cnt : unsigned(15 downto 0); --compteur de colonne 
signal v_cnt : unsigned(15 downto 0); --compteur de ligne

signal img_width_i : unsigned(31 downto 0);
signal img_heigth_i : unsigned(31 downto 0);


begin
   
   pattern_gen : process(clk160) --Generate Address for the Color Map ROM
   begin
        if(rising_edge(clk160)) then
            if (ARESETN = '0' or ENABLE = '0' ) then
                h_cnt <= (others =>'0');
                v_cnt <= (others =>'0');
                img_width_i <= unsigned(IMG_WIDTH);
                img_heigth_i <= unsigned(IMG_HEIGTH);
                
                AXIS_MOSI.TVALID <= '0';
                AXIS_MOSI.TSTRB <= (others => '1');
                AXIS_MOSI.TKEEP <= (others => '1');
                AXIS_MOSI.TLAST <= '0';
                AXIS_MOSI.TID   <= (others =>'0');
                AXIS_MOSI.TDEST <= (others =>'0');
                AXIS_MOSI.TUSER <= (others =>'0');
            else
                if AXIS_MISO.TREADY = '1' then
                    --end of line and end of frame
                    if(h_cnt < img_width_i - 2) then
                        h_cnt <= h_cnt + 2;
                        AXIS_MOSI.TLAST <= '0';
                    else
                        h_cnt <= (others =>'0');
                        if(v_cnt < img_heigth_i-1) then
                            v_cnt <= v_cnt + 1;
                            AXIS_MOSI.TLAST <= '0';
                        else
                            v_cnt <= (others =>'0');
                            AXIS_MOSI.TLAST <= '1';
                        end if;
                    end if;
                    
                    
                    
                    AXIS_MOSI.TDATA <= std_logic_vector(h_cnt +1 ) & std_logic_vector(h_cnt);

                    AXIS_MOSI.TVALID <= '1';
                    
                    AXIS_MOSI.TSTRB <= (others => '1');
                    AXIS_MOSI.TKEEP <= (others => '1');
                    
                    AXIS_MOSI.TID   <= (others =>'0');
                    AXIS_MOSI.TDEST <= (others =>'0');
                    AXIS_MOSI.TUSER <= (others =>'0');
                end if;
            end if;
        end if;
  end process pattern_gen;


end rtl;
