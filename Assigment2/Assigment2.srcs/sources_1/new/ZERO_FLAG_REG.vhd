----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2024 17:06:07
-- Design Name: 
-- Module Name: ZERO_FLAG_REG - Behavioral
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

entity ZERO_FLAG_REG is
--  Port ( );

PORT(
clk : IN std_logic; --clock signal
ZE : IN std_logic; --Z control enable
input : IN std_logic_vector(15 downto 0); -- Input data
Zstatus : out std_logic -- Z status flag
);
end ZERO_FLAG_REG;

architecture Behavioral of ZERO_FLAG_REG is
begin

process(clk)
begin

if ZE = '1' then
Zstatus <= not(input(0) or input(1) or input(2) or input(3) or input(4) or input(5) or input(6) or input(7) or input(8) or input(9)); --Not or of prev_alu_result
end if;

end process;

end Behavioral;
