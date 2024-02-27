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
          seg  : OUT std_logic_vector(7 DOWNTO 0)  -- 7-seg display cathodes (common to all display digits), active low "FPGA PINs - W7[CA/7],W6[CB/6],U8[CC/5],V8[CD/4],U5[CE/3],V5[CF/2],U7[CG/1],V7[DP/0]"
       );
END CE869_CPU_SYS;

ARCHITECTURE STCTR_CE869_CPU_SYS OF CE869_CPU_SYS IS  --Top level Structural instantiations of all components in the design

BEGIN
--  --Instantiation of the CPU
--  cpu_instance : entity work.CE869_CPU
--    PORT MAP (
--      -- clk => ,
--      -- reset => ,         
--      -- data_input => ,
--      -- data_output => 
--      );
  
--  --Instantiation of the Seven Segment Display Driver
--  svn_sgmnt_drv_instance : entity work.SVN_SGMNT_DRV
--    PORT MAP (
--             );
END STCTR_CE869_CPU_SYS;