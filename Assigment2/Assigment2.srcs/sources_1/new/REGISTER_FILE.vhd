----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2024 17:11:20
-- Design Name: 
-- Module Name: REGISTER_FILE - Behavioral
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

entity REGISTER_FILE is

generic
    (
    register_length : integer := 16;
    memory_length : integer := 4
    );

--  Port ( );


Port(
    clk  : IN std_logic; --clock
    WA : IN unsigned(1 downto 0); --Write address
    RAA : IN unsigned(1 downto 0); --Read address A
    RBA : IN unsigned(1 downto 0); --Read address B
    WE : IN std_logic; --Write enable
    RAE : IN std_logic; --Read enable A
    RBE : IN std_logic; --Read enable B
    input : IN std_logic_vector(register_length-1 downto 0); --Input data for register file
    outA : out std_logic_vector(register_length-1 downto 0); -- Output A
    outB : out std_logic_vector(register_length-1 downto 0) -- Output B
    );
    
end REGISTER_FILE;

architecture Behavioral of REGISTER_FILE is

--Register file memory 4x16
subtype reg is std_logic_vector(register_length-1 downto 0);
type register_mem is array(0 to memory_length-1) of reg;
signal memory : register_mem;

begin

--Writing to register
process(clk)
begin
if rising_edge(clk) then
    if(WE = '1') then
    memory(TO_INTEGER(WA)) <= input;
    end if;
end if;
end process;

--Reading outA
outA <= memory(TO_INTEGER(RAA)) WHEN RAE = '1'
        ELSE (input);

--Reading outB
outB <= memory(TO_INTEGER(RBA)) WHEN RBE = '1'
        ELSE (input);

end Behavioral;
