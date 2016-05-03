-------------------------------------------------------------------------------
--
-- Title       : AGC_Cumsum
-- Author      : Jean-Alexis Boulet
-- Company     : Telops
--
-------------------------------------------------------------------------------
-- $Author$
-- $LastChangedDate$
-- $Revision$ 
-------------------------------------------------------------------------------
--
-- Description : This file implement the axi_lite communication and interrupt gen to the micro blaze
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.ALL;

entity AGC_CUMSUM is
   port(     
      --------------------------------
      -- CTRL Interface
      --------------------------------                       
      CUMSUM_READY            : out  std_logic;
      LO_BINID_PREV           : out  std_logic_vector(15 downto 0);
      LO_CUMSUM               : out  std_logic_vector(31 downto 0);
      LO_CUMSUM_PREV          : out  std_logic_vector(31 downto 0);
      LO_IMAGE_FRACTION_FBCK  : out  std_logic_vector(23 downto 0); -- in pixel
      HI_BINID_PREV           : out  std_logic_vector(15 downto 0);
      HI_CUMSUM               : out  std_logic_vector(31 downto 0);
      HI_CUMSUM_PREV          : out  std_logic_vector(31 downto 0);
      HI_IMAGE_FRACTION_FBCK  : out  std_logic_vector(23 downto 0); -- in pixel
      NB_PIXEL                : out  std_logic_vector(31 downto 0);
      
      LO_IMAGE_FRACTION    : in std_logic_vector(23 downto 0); -- in pixel
      HI_IMAGE_FRACTION    : in std_logic_vector(23 downto 0); -- in pixel
      NB_BIN               : in std_logic_vector(15 downto 0);
      AGC_MODE             : in std_logic_vector(1 downto 0);
      AGC_CTRL_CLEARMEM    : in std_logic;      
      
      --------------------------------
      -- Histogram Interface
      -------------------------------- 
      HIST_RDY       : in std_logic;   
      HIST_CLEARMEM  : out std_logic;
      AGC_RESET      : out std_logic;   
      
      --------------------------------
      -- TMI INTERFACE
      --------------------------------   
      TMI_MOSI_ADD	   : out std_logic_vector(9 downto 0);
      TMI_MOSI_RNW	   : out std_logic;
      TMI_MOSI_DVAL	   : out std_logic;
      TMI_MOSI_WR_DATA  : out std_logic_vector(20 downto 0);

      TMI_MISO_BUSY     : in std_logic;
      TMI_MISO_RD_DATA  : in std_logic_vector(20 downto 0);           
      TMI_MISO_RD_DVAL  : in std_logic;
      TMI_MISO_IDLE     : in std_logic;
      TMI_MISO_ERROR    : in std_logic;

      --------------------------------
      -- MISC
      --------------------------------   
      CLK_DATA    : in  std_logic;
      ARESET      : in  std_logic 
   );
end AGC_CUMSUM;

architecture RTL of AGC_CUMSUM is

   component sync_reset
      port(
         ARESET   : in std_logic;
         SRESET   : out std_logic;
         CLK      : in std_logic
      );
   end component;

   signal sreset         : std_logic;

   -- Internal Histogram Ports 
   signal H_ready             : std_logic;
   signal H_clearmem          : std_logic;
   
   -- Cumsum internal signals
   signal lo_img_fract_found  : std_logic;
   signal hi_img_fract_found  : std_logic;
   signal Cumsum_valid        : std_logic;
   signal cumsum_ready_s      : std_logic;
   signal CumSum_Acc          : unsigned(23 downto 0);
   signal CumSum_Acc_prev     : unsigned(23 downto 0);
   
   -- TMI SIGNAL
   signal tmi_add_s     : std_logic_vector(9 downto 0);
   signal tmi_dval_s    : std_logic;

   signal tmi_busy_s       : std_logic;
   signal tmi_rddata_s     : std_logic_vector(20 downto 0);
   signal tmi_rddval_s     : std_logic;
   signal tmi_idle_s       : std_logic;
   signal tmi_error_s      : std_logic;

   
   -- INTERNAL ctrl intf signal
   signal lo_image_fraction_s       : unsigned(23 downto 0);
   signal lo_bin_id_prev_s          : unsigned(15 downto 0);
   signal lo_cumsum_s               : unsigned(23 downto 0);
   signal lo_cumsum_prev_s          : unsigned(23 downto 0);
   signal lo_image_fraction_fbck_s  : unsigned(23 downto 0);
   signal hi_image_fraction_s       : unsigned(23 downto 0);
   signal hi_bin_id_prev_s          : unsigned(15 downto 0);
   signal hi_cumsum_s               : unsigned(23 downto 0);
   signal hi_cumsum_prev_s          : unsigned(23 downto 0);
   signal hi_image_fraction_fbck_s  : unsigned(23 downto 0);
   signal hist_nb_pix_s             : unsigned(23 downto 0);


   -- Internal AGC status - DATA
   type AGCState_type is (RESET, IDLE, PROC_CUMSUM, DONE, WAIT_CLEARMEM_DONE);
   signal AGC_state           : AGCState_type := RESET;
   signal AGC_reseti          : std_logic;

   -- TMI addr gen signal
   signal TMI_add             : unsigned(9 downto 0);
   signal TMI_add_done        : std_logic;
   signal TMI_add_out         : unsigned(9 downto 0);
   signal TMI_add_out_started : std_logic;
   signal TMI_add_max         : unsigned(9 downto 0) := (others => '1');

begin

   ------------------------------------------
   -- CLK DATA
   ----------------------------------------
   sreset_data_gen : sync_reset
   port map(
      ARESET => ARESET,
      CLK    => CLK_DATA,
      SRESET => sreset
   );

   ----------------------------------------
   -- TMI ASSIGNATION
   ----------------------------------------
   TMI_MOSI_WR_DATA <= (others => '0');
   TMI_MOSI_RNW   <= '1';

   ------------------------------
   -- Histogram assignation
   ------------------------------
   H_ready        <= HIST_RDY;
   HIST_CLEARMEM  <= H_clearmem;
   AGC_RESET      <= AGC_reseti;
   
   ------------------------------
   -- CTRL Intf assignation
   ------------------------------
   CUMSUM_READY            <= cumsum_ready_s;
   LO_BINID_PREV           <= std_logic_vector(resize(lo_bin_id_prev_s, LO_BINID_PREV'length));
   LO_CUMSUM               <= std_logic_vector(resize(lo_cumsum_s, LO_CUMSUM'length));
   LO_CUMSUM_PREV          <= std_logic_vector(resize(lo_cumsum_prev_s, LO_CUMSUM_PREV'length));
   LO_IMAGE_FRACTION_FBCK  <= std_logic_vector(resize(lo_image_fraction_fbck_s, LO_IMAGE_FRACTION_FBCK'length));
   HI_BINID_PREV           <= std_logic_vector(resize(hi_bin_id_prev_s, HI_BINID_PREV'length));
   HI_CUMSUM               <= std_logic_vector(resize(hi_cumsum_s, HI_CUMSUM'length));
   HI_CUMSUM_PREV          <= std_logic_vector(resize(hi_cumsum_prev_s, HI_CUMSUM_PREV'length));
   HI_IMAGE_FRACTION_FBCK  <= std_logic_vector(resize(hi_image_fraction_fbck_s, HI_IMAGE_FRACTION_FBCK'length));
   NB_PIXEL                <= std_logic_vector(resize(hist_nb_pix_s, NB_PIXEL'length));
   
   
   AGC_SM : process(CLK_DATA)
   begin
      if rising_edge(CLK_DATA) then
         if sreset = '1' then
            AGC_state      <= RESET;
            cumsum_ready_s <= '0';
            H_clearmem     <= '1';
            AGC_reseti     <= '1'; -- Hold histogram generator in reset
         else
            
            -- Assure que l'histogrammes soient effacés après un reset
            if AGC_state = RESET then
               H_clearmem  <= '1';
            else
               H_clearmem  <= '0';
            end if;

            --------------------
            -- AGC Stopped
            --------------------
            if (AGC_MODE = "00") then 
               H_clearmem        <= '1';
               AGC_state         <= RESET;
               cumsum_ready_s    <= '0';
               AGC_reseti        <= '1'; -- Hold histogram generator in reset
               
            --------------------
            -- AGC Running
            --------------------
            else --if AGC_MODE /= "00" then
               AGC_reseti <= '0';
               
               case AGC_state is
                  when RESET =>
                     AGC_state         <= IDLE;
                     cumsum_ready_s    <= '0';
                  
                  when IDLE =>
                     if H_ready = '1' then
                        AGC_state   <= PROC_CUMSUM;
                        cumsum_ready_s    <= '0';
                     end if;
                     
                  when PROC_CUMSUM =>
                     if Cumsum_valid = '1' then
                        cumsum_ready_s    <= '1';
                        AGC_state   <= DONE;
                     else
                        cumsum_ready_s    <= '0';
                     end if; 
                     
                  when DONE => -- GEN interrupt and wait for clear mem
                     if AGC_CTRL_CLEARMEM = '1' then
                        cumsum_ready_s   <= '0';
                        H_clearmem <= '1';
                        AGC_state   <= WAIT_CLEARMEM_DONE;
                     else
                        cumsum_ready_s   <= '1';
                        H_clearmem <= '0';
                     end if;
                  
                  when WAIT_CLEARMEM_DONE =>
                     if H_ready = '0' then
                        AGC_state   <= IDLE;
                     end if;
                     
                  when others =>
                     AGC_state <= RESET;
               
               end case;
            end if;
            
         end if;
      end if;
   end process;

   
   
   CUMSUM_SM : process(CLK_DATA)
   begin
      if rising_edge(CLK_DATA) then
         if sreset = '1' then
            lo_bin_id_prev_s     <= (others => '0');
            lo_cumsum_s          <= (others => '0');
            lo_cumsum_prev_s     <= (others => '0');
            hi_bin_id_prev_s     <= (others => '0');
            hi_cumsum_s          <= (others => '0');
            hi_cumsum_prev_s     <= (others => '0');
            hist_nb_pix_s        <= (others => '0');
            lo_image_fraction_s  <= (others => '1');
            hi_image_fraction_s  <= (others => '1');
            lo_image_fraction_fbck_s  <= (others => '1');
            hi_image_fraction_fbck_s  <= (others => '1');
            TMI_add_max          <= (others => '1');
            lo_img_fract_found   <= '0';
            hi_img_fract_found   <= '0';
            Cumsum_valid         <= '0';
            tmi_dval_s           <= '0';
            tmi_add_s            <= (others => '0');
            CumSum_Acc           <= (others => '0');
            CumSum_Acc_prev      <= (others => '0');
            TMI_add_out          <= (others => '0');
            
         else
            -- Check if we are processing an histogram
            if AGC_state = IDLE then
               lo_image_fraction_s  <= unsigned(LO_IMAGE_FRACTION);
               hi_image_fraction_s  <= unsigned(HI_IMAGE_FRACTION);
               lo_img_fract_found   <= '0';
               hi_img_fract_found   <= '0';
               Cumsum_valid         <= '0';
               CumSum_Acc           <= (others => '0');
               CumSum_Acc_prev      <= (others => '0');
               
               tmi_dval_s        <= '0';
               tmi_add_s         <= (others => '0');
               TMI_add_max       <= unsigned(NB_BIN(TMI_add_max'range)) - 1;
               TMI_add           <= (others => '0');
               TMI_add_done      <= '0';
               TMI_add_out       <= (others => '0');
               TMI_add_out_started <= '0';
               
            elsif AGC_state = PROC_CUMSUM then
               if (AGC_MODE(0) = '1' and Cumsum_valid ='0' )then -- AGC IS ON and processing result is not valid yet
                  
                  -- Generate TMI adress
                  if tmi_busy_s = '0' then
                     tmi_dval_s   <= '0';
                     if TMI_add_done = '0' then
                        if TMI_add = TMI_add_max then
                           TMI_add_done <= '1';
                        end if;
                        tmi_add_s    <= std_logic_vector(TMI_add);
                        TMI_add      <= TMI_add + 1;
                        tmi_dval_s   <= '1';
                     end if;
                  end if;
                  
                  -- Cumsum calculation
                  if tmi_rddval_s = '1' then
                     CumSum_Acc        <= CumSum_Acc + unsigned(tmi_rddata_s);
                     CumSum_Acc_prev   <= CumSum_Acc; -- copy the value of the previous CumSum
                     if TMI_add_out_started = '1' then
                        -- TMI_add_out is started one cycle after to correspond to the bin id of what is already in CumSum_Acc
                        TMI_add_out    <= TMI_add_out + 1;
                     end if;
                     TMI_add_out_started <= '1';
                  end if;
                  
                  -- Find Low Image Fraction Bin information
                  if (CumSum_Acc >= lo_image_fraction_s and lo_img_fract_found = '0' ) then
                     lo_bin_id_prev_s  <= resize(TMI_add_out, lo_bin_id_prev_s'length);   -- addr starts at 0 and bin id at 1, so no need for -1
                     lo_cumsum_s  <= CumSum_Acc;
                     lo_cumsum_prev_s  <= CumSum_Acc_prev;
                     lo_image_fraction_fbck_s  <= lo_image_fraction_s;
                     lo_img_fract_found <= '1';                        
                  end if;
                  
                  -- Find High Image Fraction Bin information
                  if (CumSum_Acc >= hi_image_fraction_s and hi_img_fract_found = '0' ) then
                     hi_bin_id_prev_s  <= resize(TMI_add_out, hi_bin_id_prev_s'length);   -- addr starts at 0 and bin id at 1, so no need for -1
                     hi_cumsum_s  <= CumSum_Acc;
                     hi_cumsum_prev_s  <= CumSum_Acc_prev;
                     hi_image_fraction_fbck_s  <= hi_image_fraction_s;
                     hi_img_fract_found <= '1';                        
                  end if;
                  
                  -- Find Last bin value
                  if (TMI_add_out = TMI_add_max) then
                     hist_nb_pix_s <= CumSum_Acc;
                     Cumsum_valid <= '1';
                  end if;
                  
               end if; -- end AGCMODE(0) = '1'               
            end if; -- end AGC_state = IDLE
         end if; --sreset = '1'
      end if; -- rising_edge(CLK_DATA)
   end process;     
   
   
   TMI_SYNC : process(CLK_DATA)
   begin
      if rising_edge(CLK_DATA) then
         TMI_MOSI_ADD   <= tmi_add_s;
         TMI_MOSI_DVAL  <= tmi_dval_s;

         tmi_busy_s     <= TMI_MISO_BUSY;   
         tmi_rddata_s   <= TMI_MISO_RD_DATA;       
         tmi_rddval_s   <= TMI_MISO_RD_DVAL;
         tmi_idle_s     <= TMI_MISO_IDLE ;  
         tmi_error_s    <= TMI_MISO_ERROR;  
      end if;

   end process;

   
end RTL;
