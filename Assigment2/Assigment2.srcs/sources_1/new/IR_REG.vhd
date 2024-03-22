----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2024 16:41:39
-- Design Name: 
-- Module Name: IR_REG - Behavioral
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
USE IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IR_REG is
--  Port ( );

Port(
D : in std_logic_vector(9 downto 0); --Input from ROM 
clk : in std_logic; --Clock
IRLoad : in std_logic; --Enable instruction load
IR : out std_logic_vector (9 downto 0) --Internal register output
);
end IR_REG;

architecture Behavioral of IR_REG is
begin
process(clk) begin

if(IRLoad='1') THEN
    IR <= D; -- Copies location of instruction into IR
end if;

end process;
end Behavioral;
