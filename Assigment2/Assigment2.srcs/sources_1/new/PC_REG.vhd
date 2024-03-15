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

entity PC_REG is
--  Port ( );

Port(
IR_in : in unsigned (3 downto 0);
PCLoad : in std_logic;
clk : in std_logic;
reset : in std_logic;
PC : out unsigned (3 downto 0)
);
end PC_REG;

architecture Behavioral of PC_REG is
begin
process(clk) begin

if(PCLoad = '1') then
    PC <= IR_in;
elsif(reset='1') then
    PC <= "0000";
end if;

end process;
end Behavioral;
