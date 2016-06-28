library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;

entity colormap_mem is
   port(
      --clk and reset
      clk         : in std_logic; -- at 160 MHZ
	  aresetn		 : in std_logic;
	  
      RX_MOSI : in  t_axi4_stream_mosi16;
      RX_MISO : out t_axi4_stream_miso;
      TX_MOSI : out  t_axi4_stream_mosi32;
      TX_MISO : in t_axi4_stream_miso;
	  
	  X_FLIP  : in std_logic
   );
end colormap_mem;

architecture rtl of colormap_mem is

component blk_mem_gen_0
  port (
    clka : in std_logic;
    addra : in std_logic_vector(12 downto 0);
    douta : out std_logic_vector(29 downto 0)
  );
end component;

component SYNC_RESETN is
   port(
      CLK     : in std_logic;
      ARESETN : in std_logic;
      SRESETN : out std_logic
      );
end component;

signal sresetn : std_logic;

signal colormap_data_i : std_logic_vector(29 downto 0);
signal colormap_addr_i : std_logic_vector(12 downto 0);

signal tvalid_reg_i : std_logic_vector(1 downto 0);
signal tlast_reg_i : std_logic_vector(1 downto 0);
signal ycb_reg_i : std_logic;

begin

  sync_resetn_inst : sync_resetn port map(ARESETN => aresetn, SRESETN => sresetn, CLK => clk);
  
  colormap_bram : blk_mem_gen_0
  port map (
    clka => clk,
    addra => colormap_addr_i,
    douta => colormap_data_i
  );
  
  -- Color Map Address In
  colormap_addr_i <= RX_MOSI.TDATA(12 downto 0);

  TX_MOSI.TSTRB <= (others => '1');
  TX_MOSI.TKEEP <= (others => '1');
  TX_MOSI.TID <= (others => '0');
  TX_MOSI.TDEST <= (others => '0');
  TX_MOSI.TUSER <= (others => '0');
 

  dataout_proc : process(clk)-- Color Map Data out
  begin
     if(rising_edge(clk)) then
        if (sresetn = '0') then
		   tvalid_reg_i <= (others => '0'); 
           tlast_reg_i <=  (others => '0'); 
		   ycb_reg_i <= X_FLIP; -- Will reverse the YCb-YCr order if XFlip
		else
		   tvalid_reg_i(0) <= RX_MOSI.TVALID;
		   tvalid_reg_i(1) <= tvalid_reg_i(0);
           
           tlast_reg_i(0) <= RX_MOSI.TLAST;
		   tlast_reg_i(1) <= tlast_reg_i(0);
		   
		   -- Check if data is going out
		   if (tvalid_reg_i(1) = '1' and TX_MISO.TREADY = '1') then
			   ycb_reg_i <= not ycb_reg_i;
		   end if;
		end if;
     end if;
  end process dataout_proc;
  
  TX_MOSI.TDATA(31 downto 0) <= X"000" & colormap_data_i(19 downto 10) & colormap_data_i(29 downto 20) when (ycb_reg_i = '0') else 	-- YCb
	  							X"000" & colormap_data_i(9 downto 0) & colormap_data_i(29 downto 20); -- YCr  
  TX_MOSI.TVALID <= tvalid_reg_i(1);
  TX_MOSI.TLAST <= tlast_reg_i(1);
  RX_MISO <= TX_MISO;
  
end rtl;
