----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2024 17:11:44
-- Design Name: 
-- Module Name: RF_DATA_MUX - Behavioral
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

entity RF_DATA_MUX is
--  Port ( );
Port(
    sel : IN std_logic_vector(1 downto 0); --Select mux state
    instruction : IN std_logic_vector(3 downto 0); --Instruction input (last 4 bits)
    external_input : IN std_logic_vector(15 downto 0); -- External input (switches)
    prev_alu_result : IN std_logic_vector (15 DOWNTO 0); --Previous alu result as input
    output : OUT std_logic_vector (15 DOWNTO 0) -- Multiplexer output
    );
end RF_DATA_MUX;

architecture Behavioral of RF_DATA_MUX is

begin


WITH sel SELECT
output <= ("000000000000" & instruction) WHEN "00", --If instruction as input padd with zeros to achieve 16 bit
          external_input WHEN "01",
          prev_alu_result WHEN "10",
          "0000000000000000" WHEN OTHERS;


end Behavioral;
