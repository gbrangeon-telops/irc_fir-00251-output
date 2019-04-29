---------------------------------------------------------------------------------------------------
--  Copyright (c) Telops Inc. 2014
--
--  File: axis_lane_adj.vhd
--  Use: adjust the axis stream lane for BASE and full operations
--  By: Jean-Alexis Boulet
--
--  $Revision$
--  $Author$
--  $LastChangedDate$
--
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;
use work.CLINK_Define.all;

entity axis_lane_adj is
   port(
      CLK         : in  std_logic;
      ARESET      : in std_logic;
      CLINK_CONF      : in  CLinkConfig;
      AXIS_RX_MOSI  : in  t_axi4_stream_mosi64;
      AXIS_RX_MISO  : out t_axi4_stream_miso;
      AXIS_TX_MOSI  : out t_axi4_stream_mosi64;
      AXIS_TX_MISO  : in  t_axi4_stream_miso;
      SOF            : out std_logic;
      EOF            : out std_logic
      );
end axis_lane_adj;

architecture rtl of axis_lane_adj is

   -- declaring components explicitly eases synthesis file ordering mess!
   component SYNC_RESET is
      port(
         CLK    : in std_logic;
         ARESET : in std_logic;
         SRESET : out std_logic);
   end component;

   component axis64_reg
      port (
      RX_MOSI : in  t_axi4_stream_mosi64;
      RX_MISO : out t_axi4_stream_miso;
      TX_MOSI : out t_axi4_stream_mosi64;
      TX_MISO : in  t_axi4_stream_miso;
      ARESETN : in  std_logic;
      CLK     : in  std_logic
   );
   end component axis64_reg;
   

    
   signal sreset, aresetn     : std_logic;
   signal data_buf   : std_logic_vector(47 downto 0);
   signal tlast_buf    : std_logic;
   signal tvalid_o     : std_logic; 
   signal tready_i     : std_logic;
   signal Lval_cnt : unsigned(LVALLEN-1 downto 0) ;
   signal FVal_cnt : unsigned(FVALLEN-1 downto 0) ;
   
   signal lval_size_i : unsigned(LVALLEN-1 downto 0);
   signal fval_size_i : unsigned(FVALLEN-1 downto 0);
   signal CLinkMode : std_logic_vector(1 downto 0);

   type lane_state_t is (LANE0, LANE1, LANE2, LANE3);
   signal state : lane_state_t := LANE0;
   
   
   signal reg64_tx_mosi : t_axi4_stream_mosi64;
   signal reg64_tx_miso  :  t_axi4_stream_miso;

begin
   
   -- resync reset
   inst_sync_reset : sync_reset port map(ARESET => ARESET, SRESET => sreset, CLK => CLK);
   
   -- map outputs
   AXIS_TX_MOSI.TVALID <= tvalid_o;
   reg64_tx_miso.TREADY <= AXIS_TX_MISO.TREADY and tready_i;

   aresetn <= not ARESET;  
   
   axis64_reg_i : axis64_reg
   port map (
     RX_MOSI => AXIS_RX_MOSI,
     RX_MISO => AXIS_RX_MISO,
     TX_MOSI => reg64_tx_mosi,
     TX_MISO => reg64_tx_miso,
     ARESETN => aresetn,
     CLK     => CLK
   );
  
   -- adjust the data lanes according to CLINK_MODE
   lane_adjust : process(CLK)
   begin        

      if rising_edge(CLK) then 

         if sreset = '1' then 
            tready_i <= '0'; 
            tvalid_o <= '0';            
            state <= LANE0; 
            
            --Lval_cnt <= (others => '0');
            --Fval_cnt <= (others => '0');
         else
            -- map outputs
            AXIS_TX_MOSI.TID <= reg64_tx_mosi.TID;
            AXIS_TX_MOSI.TDEST <= reg64_tx_mosi.TDEST;
            AXIS_TX_MOSI.TUSER <= reg64_tx_mosi.TUSER;
            
            lval_size_i <= CLINK_CONF.LValSize -1;
            fval_size_i <= CLINK_CONF.FValSize -1;            
            CLinkMode  <=  CLINK_CONF.CLinkMode;
            
            if (AXIS_TX_MISO.TREADY = '1') then              
               -- GEN SOF
--               if (Lval_cnt = 0 and Fval_cnt = 0) then
--                  SOF <= '1';
--               else
--                  SOF <= '0';
--               end if;
--               
--               --GEN EOF
--               if ( (Lval_cnt = lval_size_i) and (Fval_cnt = fval_size_i) ) then
--                  EOF <= '1';
--               else
--                  EOF <= '0';
--               end if;

               -- FULL MODE               
               if CLinkMode = CLINK_FULL_MODE then   
                  -- in full mode we are always ready and we are a passthrougt
                  tready_i <= '1'; 
                  tvalid_o <= reg64_tx_mosi.TVALID;    
                  
                  AXIS_TX_MOSI.TSTRB <= reg64_tx_mosi.TSTRB; --tous les bytes sont valides
                  AXIS_TX_MOSI.TKEEP  <= reg64_tx_mosi.TKEEP;
                  AXIS_TX_MOSI.TLAST  <= reg64_tx_mosi.TLAST; 

                  AXIS_TX_MOSI.TDATA(15 downto 0) <= reg64_tx_mosi.TDATA(63 downto 48); --Pixel 3
                  AXIS_TX_MOSI.TDATA(31 downto 16) <= reg64_tx_mosi.TDATA(47 downto 32); --Pixel 2
                  AXIS_TX_MOSI.TDATA(47 downto 32) <= reg64_tx_mosi.TDATA(31 downto 16);  --Pixel 1
                  AXIS_TX_MOSI.TDATA(63 downto 48) <= reg64_tx_mosi.TDATA(15 downto 0); --Pixel 0                      
                       
--                  --increment Frame position
--                  if (reg64_tx_mosi.TVALID = '1') then
--                    if (Lval_cnt = lval_size_i ) then
--                        Lval_cnt <= (others => '0');   --reset cnt
--                        if (Fval_cnt = fval_size_i ) then
--                           Fval_cnt <= (others => '0');   --reset cnt
--                        else
--                           Fval_cnt <= Fval_cnt + 1;
--                        end if;
--   
--                     else
--                        Lval_cnt <= Lval_cnt + 1 ;
--                     end if;
--                  end if;
               
               -- BASE MODE
                 else 
                  --IN BASE mode we have to toggle the data pixel per pixel 
                  AXIS_TX_MOSI.TDATA(63 downto 16) <= (others => '0'); -- clear all unused pixels
                  AXIS_TX_MOSI.TSTRB <= X"03"; --only one pixel valid
                  AXIS_TX_MOSI.TKEEP <= X"03";

                  case state is
                     when LANE0 =>
                        -- register incoming data
                        data_buf(47 downto 32) <= reg64_tx_mosi.TDATA(63 downto 48); --Pixel 3
                        data_buf(31 downto 16) <= reg64_tx_mosi.TDATA(47 downto 32); --Pixel 2
                        data_buf(15 downto 0) <= reg64_tx_mosi.TDATA(31 downto 16); --Pixel 1
                        tlast_buf <= reg64_tx_mosi.TLAST;
                        
                        --If the data receive is valid we move to the next line at the next cycle
                       --and we halt the transmit
                       if reg64_tx_mosi.TVALID = '1' then
                           state <= LANE1;
                           tready_i <= '0';
                           AXIS_TX_MOSI.TDATA(15 downto 0)  <= reg64_tx_mosi.TDATA(15 downto 0);
                           tvalid_o <= '1';
                           --Lval_cnt <= Lval_cnt + 1; 

                        else --we wait for valid data
                           state <= LANE0;
                           tready_i <= '1';
                           tvalid_o <= '0';  
                           AXIS_TX_MOSI.TDATA(15 downto 0)  <= (others => '0');
                        end if;        
                        
                        AXIS_TX_MOSI.TLAST <= '0'; 
                        
                     when LANE1 =>
                        state <= LANE2;
                        tready_i <= '0';
                        tvalid_o <= '1';
                        AXIS_TX_MOSI.TDATA(15 downto 0)  <= data_buf(15 downto 0); --Pixel 1
                        AXIS_TX_MOSI.TLAST <= '0';
                        --Lval_cnt <= Lval_cnt + 1;
   
                     when LANE2 =>
                        state <= LANE3;
                        tready_i <= '0';
                        tvalid_o <= '1';
                        AXIS_TX_MOSI.TDATA(15 downto 0)  <= data_buf(31 downto 16); --pixel 2
                        AXIS_TX_MOSI.TLAST <= '0';                       
                        --Lval_cnt <= Lval_cnt + 1;
   
                     when LANE3 =>
                         state <= LANE0;
                         tready_i <= '1'; 
                         tvalid_o <= '1'; 
                         AXIS_TX_MOSI.TDATA(15 downto 0) <= data_buf(47 downto 32); --pixel 3
                         AXIS_TX_MOSI.TLAST <= tlast_buf;
                         
--                        --increment Frame position
--                           if (Lval_cnt = lval_size_i) then
--                              Lval_cnt <= (others => '0');   --reset cnt
--                              if (Fval_cnt = fval_size_i) then
--                                 Fval_cnt <= (others => '0');   --reset cnt
--                              else
--                                 Fval_cnt <= Fval_cnt + 1;
--                              end if;
--         
--                           else
--                              Lval_cnt <= Lval_cnt + 1 ;
--                           end if;
                  end case;
               end if;  
                
            end if;

         end if;
      end if;

   end process lane_adjust;
   

end rtl;
