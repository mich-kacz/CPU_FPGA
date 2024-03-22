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
IR_in : in unsigned (3 downto 0); --Program counter input (value from jump or next PC value)
PCLoad : in std_logic; --Enable PC load
clk : in std_logic; --Clock
reset : in std_logic; --Reset program counter
PC : out unsigned (3 downto 0); --Program counter actual value
PC_next : out unsigned (3 downto 0) --Next program counter value
);
end PC_REG;

architecture Behavioral of PC_REG is
signal counter : unsigned (3 downto 0) := (OTHERS => '0');
begin
process(clk)
begin

if(PCLoad = '1') then --If enable PC load value from input and increment next PC state
    PC <= IR_in;
    counter <= IR_in;
    PC_next <= IR_in + 1;
elsif(reset='1') then --If reset true then PC equals 0
    PC <= "0000";
    counter <= "0000";
    PC_next <= "0001";
else --Else program counter is not changing its state
    PC <= counter;
    PC_next <= counter + 1;
end if;

end process;
end Behavioral;
