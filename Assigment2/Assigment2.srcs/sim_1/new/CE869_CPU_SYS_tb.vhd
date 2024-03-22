----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2024 11:11:35
-- Design Name: 
-- Module Name: CE869_CPU_SYS_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CE869_CPU_SYS_tb is
--  Port ( );
end CE869_CPU_SYS_tb;

architecture Behavioral of CE869_CPU_SYS_tb is

Component CE869_CPU_SYS
	port (
		 clk  : IN std_logic;                     -- On board 100Mhz clock "FPGA PIN - W5"
          btnC : IN std_logic;                     -- On board push button (used as CPU reset) "FPGA PIN - U18" 
          sw   : IN std_logic_vector(15 DOWNTO 0); -- On board 16 slide switches "FPGA PINs - R2[15],T1[14],U1[13],W2[12],R3[11],T2[10],T3[9],V2[8],W13[7],W14[6],V15[5],W15[4],W17[3],W16[2],V16[1],V17[0]"
          an   : OUT std_logic_vector(3 DOWNTO 0); -- 7-seg display anodes (1 for each display digit), active low "FPGA PIN - U2"
          seg  : OUT std_logic_vector(0 TO 6) 
	);	
	End Component;
	
	 signal clk  :  std_logic := '0';                     -- On board 100Mhz clock "FPGA PIN - W5"
     signal btnC :  std_logic := '0';                     -- On board push button (used as CPU reset) "FPGA PIN - U18" 
     signal sw   :  std_logic_vector(15 DOWNTO 0) := "0000000000000101"; -- On board 16 slide switches "FPGA PINs - R2[15],T1[14],U1[13],W2[12],R3[11],T2[10],T3[9],V2[8],W13[7],W14[6],V15[5],W15[4],W17[3],W16[2],V16[1],V17[0]"
     signal an   :  std_logic_vector(3 DOWNTO 0) := (others=>'0'); -- 7-seg display anodes (1 for each display digit), active low "FPGA PIN - U2"
     signal seg  :  std_logic_vector(0 TO 6) := (others=>'0');

begin
DUT:  CE869_CPU_SYS PORT MAP (
		clk  => clk,                     -- On board 100Mhz clock "FPGA PIN - W5"
        btnC => btnC,                   -- On board push button (used as CPU reset) "FPGA PIN - U18" 
        sw => sw, -- On board 16 slide switches "FPGA PINs - R2[15],T1[14],U1[13],W2[12],R3[11],T2[10],T3[9],V2[8],W13[7],W14[6],V15[5],W15[4],W17[3],W16[2],V16[1],V17[0]"
        an  => an, -- 7-seg display anodes (1 for each display digit), active low "FPGA PIN - U2"
        seg => seg 
);

process begin
    wait for 10 ns; clk <= '1';
    wait for 10 ns; clk <= '0';
end process;

end Behavioral;
