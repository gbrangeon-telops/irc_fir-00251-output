-------------------------------------------------------------------------------
--
-- Title       : LineFraming
-- Design      : fir_00251_output
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : D:\Telops\FIR-00251-Output\src\Line_Buffer\Hdl\LineFraming.vhd
-- Generated   : Thu Jan 23 15:55:07 2014
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

library work;
use work.tel2000.all;
use work.CLINK_Define.all;

entity LineFraming is
	 port(
      S_DATAFRAME_MOSI : in t_axi4_stream_mosi64;
      S_DATAFRAME_MISO : out t_axi4_stream_miso;

      S_DATALINE_MOSI : out t_axi4_stream_mosi64;
      S_DATALINE_MISO : in t_axi4_stream_miso;
      
      CLINK_CONF      : in  CLinkConfig;
      
      ARESETN : in STD_LOGIC;
      CLK : in STD_LOGIC
);
end LineFraming;


architecture LineFraming of LineFraming is

--component declaration
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

constant PIX_PER_TRANSACTION : integer := S_DATAFRAME_MOSI.TDATA'length / 16;   


--signal declaration 
signal width_i : unsigned(CLINK_CONF.width'range);
signal fvalsize :  unsigned(CLINK_CONF.FValSize'range);

signal pixel_cnt  : unsigned(31 downto 0):= (others =>'0');
signal line_cnt  : unsigned(15 downto 0):= (others =>'0');
signal sresetn : std_logic;
signal cfg_valid_s : std_logic;



signal rx_frame_miso : t_axi4_stream_miso;
signal rx_frame_hold : t_axi4_stream_mosi64;
signal tx_line_mosi : t_axi4_stream_mosi64;

begin


sreset_0 : sync_resetn port map(ARESETN => ARESETN, SRESETN => sresetn, CLK => CLK);

configvalid_sync : double_sync port map(D => CLINK_CONF.Valid, Q => cfg_valid_s, RESET => '0', CLK => CLK);

-- Stream Assignment    
S_DATAFRAME_MISO <= rx_frame_miso;
S_DATALINE_MOSI <= tx_line_mosi;

cfg_syn : process(CLK)      
begin  
   if rising_edge(CLK) then
      if cfg_valid_s = '1' then 
         width_i <= CLINK_CONF.width - PIX_PER_TRANSACTION;
         fvalsize <= CLINK_CONF.FValSize - 1;
      end if;
   end if;
end process;

-- Count Pixel and line
counter : process(CLK) is
begin  
  
   
   
   if (rising_edge(CLK)) then
      if (sresetn = '0' or cfg_valid_s = '0') then
         pixel_cnt <= (others => '0');
         line_cnt  <= (others => '0');
      else
         if (S_DATAFRAME_MOSI.TVALID = '1' and rx_frame_miso.TREADY = '1') then
            if (pixel_cnt = width_i) then
               pixel_cnt <= (others => '0');
               
               if (line_cnt = fvalsize)  then
                  line_cnt <= (others => '0');
               else
                  line_cnt <= line_cnt + 1;
               end if; 
            else 
               pixel_cnt <= pixel_cnt + PIX_PER_TRANSACTION;


            end if;
         end if;
      end if;
   end if;
end process counter;


Register_stream : process(CLK)
   begin       
      if rising_edge(CLK) then
         if sresetn = '0' or cfg_valid_s = '0' then          
            rx_frame_miso.TREADY <= '0';
            tx_line_mosi.TVALID <= '0';
            tx_line_mosi.TDATA <= (others => '0');
            tx_line_mosi.TKEEP <= (others => '0');
            tx_line_mosi.TSTRB <= (others => '0');
            tx_line_mosi.TID <= (others => '0');
            tx_line_mosi.TUSER <= (others => '0');
            tx_line_mosi.TLAST <= '0';
            rx_frame_hold.TVALID <= '0';
            rx_frame_hold.TDATA <= (others => '0');
            rx_frame_hold.TKEEP <= (others => '0');
            rx_frame_hold.TSTRB <= (others => '0');
            rx_frame_hold.TID <= (others => '0');
            rx_frame_hold.TUSER <= (others => '0');
            rx_frame_hold.TLAST <= '0';
 
         else            
            rx_frame_miso <= S_DATALINE_MISO;

            if rx_frame_miso.TREADY = '1' then  
               
               rx_frame_hold <= S_DATAFRAME_MOSI;
               
               -- Check for SOF              
               if (pixel_cnt = 0 and line_cnt = 0  and S_DATAFRAME_MOSI.TVALID = '1') then
                  rx_frame_hold.TUSER(0) <= '1';
               else
                  rx_frame_hold.TUSER(0) <= '0';
               end if;
               
               -- Check for EOL or EOF
               if( (pixel_cnt = width_i) and S_DATAFRAME_MOSI.TVALID = '1') then
                
                  rx_frame_hold.TLAST <= '1'; -- End of line  
               
                  if (line_cnt = fvalsize) then 
                     rx_frame_hold.TUSER(1) <= '1'; --End of frame
                  end if;
            
               else 
                  rx_frame_hold.TLAST <= '0';
                  rx_frame_hold.TUSER(1) <= '0';
               end if;  

               
            end if;     
            
            
            if S_DATALINE_MISO.TREADY = '1' then     
               
               tx_line_mosi <= S_DATAFRAME_MOSI;

              -- Check for SOF              
              if (pixel_cnt = 0 and line_cnt = 0  and S_DATAFRAME_MOSI.TVALID = '1') then
                  tx_line_mosi.TUSER(0) <= '1';
               else
                  tx_line_mosi.TUSER(0) <= '0';
               end if;
               
               -- Check for EOL or EOF
               if( (pixel_cnt = width_i) and S_DATAFRAME_MOSI.TVALID = '1') then
                  
                  tx_line_mosi.TLAST <= '1'; -- End of line
                
                  if (line_cnt = fvalsize) then 
                   tx_line_mosi.TUSER(1) <= '1'; --End of frame
                  end if;
                
               else 
                  tx_line_mosi.TLAST <= '0'; 
                  tx_line_mosi.TUSER(1) <= '0';
               end if; 
 
            end if;
            
            if S_DATALINE_MISO.TREADY = '1' and rx_frame_miso.TREADY = '0' then
               tx_line_mosi <= rx_frame_hold;
            end if;                         
         end if;
      end if;
   end process;


end LineFraming;
