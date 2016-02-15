------------------------------------------------------------------
--!   @file : tdp_ram_w32
--!   @brief
--!   @details: ce module de dual port ram comporte des interfaces natives. La plage d'adressage va de 0 à [2^(PAGE_ADD_WIDTH + PAGE_NUMBER) - 1]
--!
--!   $Rev$
--!   $Author$
--!   $Date$
--!   $Id$
--!   $URL$
------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;           
use IEEE.numeric_std.ALL;
use work.tel2000.all;


entity colormap_mem_wrap is 
   port(
      ARESET       : in std_logic;
      A_CLK        : in std_logic;

      
      -- port A : RD
      A_RD         : in std_logic;
      A_RD_ADD     : in std_logic_vector(12 downto 0);
      A_EOF        : in std_logic;
      A_RD_DATA    : out std_logic_vector(31 downto 0);
      A_RD_DVAL    : out std_logic;
      A_RD_EOF     : out std_logic;
      
      A_ERR        : out std_logic;
      
      X_FLIP        : in std_logic;
      BUSY         : in  std_logic
      
      );
end colormap_mem_wrap;


architecture rtl of colormap_mem_wrap is
   
   
   -- les rams specifiques 
COMPONENT blk_mem_gen_0
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(29 DOWNTO 0)
  );
end component;  
   -- composants communs quelle que que soit la ram
   component sync_reset
      port(
         ARESET : in std_logic;
         SRESET : out std_logic;
         CLK    : in std_logic);
   end component;   
   

   signal sreset         : std_logic;   
   signal dval_i         : std_logic;   
   signal a_dval_pipe    : std_logic_vector(2 downto 0);
   signal a_tlast_pipe    : std_logic_vector(2 downto 0);
   signal sreset_A_CLK   : std_logic;
   signal a_add_i        : std_logic_vector(A_RD_ADD'length-1 downto 0);
   signal ycb_reg_i : std_logic;
   signal colormap_data_i : std_logic_vector(29 downto 0);
   signal bram_en : std_logic;


   
   
   
begin
   
   -----------------------------------------------------
   -- Synchronisation reset
   -----------------------------------------------------
   U1A: sync_reset
   Port map(		
      ARESET   => ARESET,		
      SRESET   => sreset_A_CLK,
      CLK   => A_CLK);

   
   ------------------------------------------------------
   -- lecture de la RAM : generation de A_RD_DVAL
   ------------------------------------------------------	
   mem_rd_dval: process(A_CLK)
   begin
      if rising_edge(A_CLK) then 
         if sreset_A_CLK = '1' then	
            A_RD_DVAL <= '0';
            a_dval_pipe <= (others =>'0');
            a_tlast_pipe <= (others =>'0');
            A_ERR <= '0';
            ycb_reg_i <= X_FLIP; -- Will reverse the YCb-YCr order if XFlip
         else
            if( bram_en = '1') then
                -- generation de A_RD_DVAL            
                a_dval_pipe(0) <= A_RD; 
                a_dval_pipe(1) <= a_dval_pipe(0);
                --for lattency = 3
                a_tlast_pipe(0) <= A_EOF;
                a_tlast_pipe(1) <= a_tlast_pipe(0);
                
                --here latency =2
                A_RD_DVAL <= a_dval_pipe(1);
                A_RD_EOF <= a_tlast_pipe(1);
                
                a_add_i <= A_RD_ADD;
                
                if (a_dval_pipe(1) = '1') then
    			   ycb_reg_i <= not ycb_reg_i;
    		    end if;
            end if;
            
         end if;
      end if;		
   end process;
   
   
   ------------------------------------------------------
   -- mapping  RAM
   ------------------------------------------------------   
   
   bram_en <= not BUSY;
   
      colormap : blk_mem_gen_0
      port map (
      -- port A
         ena => bram_en,
         clka  => A_CLK,
         addra => a_add_i,
         douta => colormap_data_i       
         ); 
         
    A_RD_DATA <= X"000" & colormap_data_i(19 downto 10) & colormap_data_i(29 downto 20) when (ycb_reg_i = '0') else 	-- YCb
	  							X"000" & colormap_data_i(9 downto 0) & colormap_data_i(29 downto 20); -- YCr  

end rtl;
