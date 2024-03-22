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
E : IN std_logic; --Control of tri state buffer
input : IN std_logic_vector(15 downto 0); -- input for tri state buffer
output : OUT std_logic_vector(15 downto 0) -- Output of tri state buffer
);
end DATA_OUTPUT_REG;

architecture Behavioral of DATA_OUTPUT_REG is
    signal reg : std_logic_vector(15 downto 0) := (others => '0'); -- singal to save last alu instruction
begin
    
--Tri state buffer implementation
--    output <= input WHEN E='1'
--          ELSE (OTHERS => 'Z');

--For tests to prevent blinking of LCD (saves last alu result with enable true)
    output <= input WHEN E='1' ELSE (reg);
    reg <=  input WHEN E='1' ELSE (reg);

end Behavioral;
