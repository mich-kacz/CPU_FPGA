----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2024 17:06:07
-- Design Name: 
-- Module Name: IR_MUX - Behavioral
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

entity IR_MUX is
--  Port ( );
Port(
    INC_in : in unsigned (3 downto 0);
    IR_in : in std_logic_vector (3 downto 0);
    IRMux : in std_logic;
    IR_out : out unsigned (3 downto 0)
    
);
end IR_MUX;

architecture Behavioral of IR_MUX is
begin

IR_out<= (INC_in + 1) WHEN IRMux='1' else --Mux if IRLoad 1 then incremen counter else load counter from IR
         UNSIGNED(IR_in) WHEN IRMux='0';

end Behavioral;
