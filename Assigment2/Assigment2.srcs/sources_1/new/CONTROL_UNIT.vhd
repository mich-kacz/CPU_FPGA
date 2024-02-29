----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2024 17:11:59
-- Design Name: 
-- Module Name: CONTROL_UNIT - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CONTROL_UNIT is
--  Port ( );

Port
(
    D : in std_logic_vector(9 downto 0);
    clk : in std_logic;
    reset : in std_logic;
    IRLoad : in std_logic;
    PCLoad : in std_logic;
    IR : out std_logic_vector(9 downto 0)
);
end CONTROL_UNIT;


architecture Behavioral of CONTROL_UNIT is

 constant HALT : std_logic_vector(3 downto 0) := "0000";
    constant MOV : std_logic_vector(3 downto 0) := "0001";
    constant IN_in : std_logic_vector(3 downto 0) := "0010";
    constant OUT_in : std_logic_vector(3 downto 0) := "0011";
    constant NOT_in : std_logic_vector(3 downto 0) := "0100";
    constant JMP : std_logic_vector(3 downto 0) := "0101";
    constant JNZ : std_logic_vector(3 downto 0) := "0110";
    constant JN : std_logic_vector(3 downto 0) := "0111";
    constant LT : std_logic_vector(3 downto 0) := "1000";
    constant INC : std_logic_vector(3 downto 0) := "1001";
    constant DEC : std_logic_vector(3 downto 0) := "1010";
    constant ADD : std_logic_vector(3 downto 0) := "1011";
    constant SUB : std_logic_vector(3 downto 0) := "1100";
    constant AND_in : std_logic_vector(3 downto 0) := "1101";
    constant OR_in : std_logic_vector(3 downto 0) := "1110";
    constant MOV_2 : std_logic_vector(3 downto 0) := "1111";
    
begin
process 
begin

CASE  D(0 to 3) is
WHEN HALT => IR <= D;


END CASE;


end process;
end Behavioral;
