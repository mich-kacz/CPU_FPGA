---------------------------------------------------------------------------------------------------
-- Top level Structural VHD file CE869_CPU_SYS.vhd
-- Instantiates CE869_CPU, SVN_SGMNT_DRV the Seven-Segment Drive.
-- Takes input the master clock 100Mhz from the on board oscillator.
-- Takes active high reset from the on board push button.
--    The design is implemented for the Artix-7 based Xilinx FPGA, digilent board "Basys 3"(TM)
--    The design implements the CE869_CPU with inbuilt 16 locations code for execution,
--        and the results capable of displaying to the on board seven-segment LED.
--        The display driver implements a anode scan method with persistence of eye.
--    The design also takes in one of the operand as input from the on board 16-slide switches.
--    No INOUT ports are use, no port buffers are used, all the assignment conditions are met.
--
-- Designer    : 
-- University  : CSEE - University of Essex
-- Assaignment : CE869 Assignment 2: CPU design
---------------------------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CE869_CPU_SYS IS
  PORT (
          clk  : IN std_logic;                     -- On board 100Mhz clock "FPGA PIN - W5"
          btnC : IN std_logic;                     -- On board push button (used as CPU reset) "FPGA PIN - U18" 
          sw   : IN std_logic_vector(15 DOWNTO 0); -- On board 16 slide switches "FPGA PINs - R2[15],T1[14],U1[13],W2[12],R3[11],T2[10],T3[9],V2[8],W13[7],W14[6],V15[5],W15[4],W17[3],W16[2],V16[1],V17[0]"
          an   : OUT std_logic_vector(3 DOWNTO 0); -- 7-seg display anodes (1 for each display digit), active low "FPGA PIN - U2"
          seg  : OUT std_logic_vector(0 TO 6)  -- 7-seg display cathodes (common to all display digits), active low "FPGA PINs - W7[CA/7],W6[CB/6],U8[CC/5],V8[CD/4],U5[CE/3],V5[CF/2],U7[CG/1],V7[DP/0]"
       );
END CE869_CPU_SYS;

ARCHITECTURE STCTR_CE869_CPU_SYS OF CE869_CPU_SYS IS  --Top level Structural instantiations of all components in the design

signal digit : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS=>'0');
signal d0, d1, d2, d3 : std_logic_vector(3 downto 0); -- Signals for digits displayed on the screen
signal clk_div : STD_LOGIC;
signal dummyDP : STD_LOGIC := '0';

BEGIN
--  --Instantiation of the CPU
  cpu_instance : entity work.CE869_CPU
    PORT MAP (
       clk => clk,
       reset => btnC,         
       data_input => sw,
       data_output => digit
      );
      
  --Frequency divider for LCD
  freq_div : entity work.frequency_divider
    PORT MAP (
       ck => clk, -- Signal 100MHz
       ckOut => clk_div --Divided signal
      );

--  --Instantiation of the Seven Segment Display Driver
  svn_sgmnt_drv_instance : entity work.four_digits
    PORT MAP (
                d0 => "0000",--digit(3 downto 0),
                d1 => "0000",--digit(7 downto 4),
                d2 => "0000",--digit(11 downto 8),
                d3 => "0000",--digit(15 downto 12),
                ck  => clk_div, -- Clock signal for switching digit
                seg  => seg, -- Signal for one digit logic(segments)
                an  => an, -- vector for defining which digit to display on screen
                dp  => dummyDP  -- Dot on an 
             );
--process(clk_div)
--begin 
--        d0 <= digit(3 downto 0);
--        d1 <= digit(7 downto 4);
--        d2 <= digit(11 downto 8);
--        d3 <= digit(15 downto 12);
--end process;
          
END STCTR_CE869_CPU_SYS;