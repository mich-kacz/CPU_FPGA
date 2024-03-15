----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2024 17:06:07
-- Design Name: 
-- Module Name: DATA_OUTPUT_REG - Behavioral
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

entity DATA_OUTPUT_REG is
--  Port ( );
Port(
E : IN std_logic;
input : IN std_logic_vector(9 downto 0);
output : OUT std_logic_vector(9 downto 0)
);
end DATA_OUTPUT_REG;

architecture Behavioral of DATA_OUTPUT_REG is
begin

output <= input WHEN E='1'
          ELSE (OTHERS => 'Z');

end Behavioral;
