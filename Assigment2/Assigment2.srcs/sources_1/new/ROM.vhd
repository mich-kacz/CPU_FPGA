----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2024 17:08:20
-- Design Name: 
-- Module Name: ROM - Behavioral
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

entity ROM is
--  Port ( );
    generic
    (
    register_length : integer := 10;
    memory_length : integer := 16
    );

    Port(
    clk  : IN std_logic;
    adress : IN unsigned(3 downto 0);
    output : out std_logic_vector(register_length-1 downto 0)
    );
end ROM;


architecture Behavioral of ROM is 
    -- rom memory 16x10
    subtype reg is std_logic_vector(register_length-1 downto 0);
    type rom_memory is array(0 to memory_length-1) of reg;
    signal memory : rom_memory;

    --Instruction codes with zeros
    constant HALT : std_logic_vector(register_length-1 downto 0) := "0000000000";
    constant MOV : std_logic_vector(5 downto 0) := "000100";
    constant IN_in : std_logic_vector(7 downto 0) := "00100000";
    constant OUT_in : std_logic_vector(7 downto 0) := "00110000";
    constant NOT_in : std_logic_vector(5 downto 0) := "010000";
    constant JMP : std_logic_vector(5 downto 0) := "010100";
    constant JNZ : std_logic_vector(5 downto 0) := "011000";
    constant JN : std_logic_vector(5 downto 0) := "011100";
    constant LT : std_logic_vector(5 downto 0) := "100000";
    constant INC : std_logic_vector(3 downto 0) := "1001";
    constant DEC : std_logic_vector(3 downto 0) := "1010";
    constant ADD : std_logic_vector(3 downto 0) := "1011";
    constant SUB : std_logic_vector(3 downto 0) := "1100";
    constant AND_in : std_logic_vector(3 downto 0) := "1101";
    constant OR_in : std_logic_vector(3 downto 0) := "1110";
    constant MOV_2 : std_logic_vector(3 downto 0) := "1111";
    
begin
    --Program stored in ROM
    memory(0) <= MOV_2 & "011111";
    memory(1) <= HALT;
    memory(2) <= ADD & "100101";
    memory(3) <= OUT_in & "10";
    memory(4) <= MOV_2 & "000011";
    memory(5) <= ADD & "100001";
    memory(6) <= OUT_in & "10";
    memory(7) <= JMP & "0000";
    memory(8) <= HALT;
    memory(9) <= HALT;
    memory(10) <= HALT;
    memory(11) <= HALT;
    memory(12) <= HALT;
    memory(13) <= HALT;
    memory(14) <= HALT;
    memory(15) <= HALT;

process(clk)
begin

if rising_edge(clk) then

    output <= memory(TO_INTEGER(UNSIGNED( adress ))); --Outputing instruction according to address
end if;

end process;

end Behavioral;
