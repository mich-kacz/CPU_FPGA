----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2024 17:11:59
-- Design Name: 
-- Module Name: CONTROL_UNIT - Behavioral
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

entity CONTROL_UNIT is
--  Port ( );

Port
(
    clk : in std_logic;
    reset : in std_logic;
    IR : in std_logic_vector (9 downto 0);
    ZStatus : in std_logic; -- ZStatus flag
    IRLoad : out std_logic;
    PCLoad : out std_logic;
    IRMux : out std_logic;
    IE : out std_logic_vector(1 downto 0);
    WA : out unsigned(1 downto 0); --Write address
    RAA : out unsigned(1 downto 0); --Read address A
    RBA : out unsigned(1 downto 0); --Read address B
    WE : out std_logic; --Write enable
    RAE : out std_logic; --Read enable A
    RBE : out std_logic; --Read enable B
    op : out std_logic_vector(2 downto 0);
    E : out std_logic; -- Tri state buffor for data oputput control
    ZE : out std_logic -- ZStatus enable register
);
end CONTROL_UNIT;


architecture Behavioral of CONTROL_UNIT is

    constant HALT : std_logic_vector(3 downto 0) := "0000";
    constant MOV : std_logic_vector(3 downto 0) := "0001";
    constant IN_in : std_logic_vector(3 downto 0) := "0010";
    constant OUT_in : std_logic_vector(3 downto 0) := "0011";
    constant NOT_in : std_logic_vector(3 downto 0) := "0100";
    constant JMP : std_logic_vector(3 downto 0) := "0101";
    constant JNZ : std_logic_vector(3 downto 0) := "0110";
    constant JN : std_logic_vector(3 downto 0) := "0111";
    constant LT : std_logic_vector(3 downto 0) := "1000";
    constant INC : std_logic_vector(3 downto 0) := "1001";
    constant DEC : std_logic_vector(3 downto 0) := "1010";
    constant ADD : std_logic_vector(3 downto 0) := "1011";
    constant SUB : std_logic_vector(3 downto 0) := "1100";
    constant AND_in : std_logic_vector(3 downto 0) := "1101";
    constant OR_in : std_logic_vector(3 downto 0) := "1110";
    constant MOV_2 : std_logic_vector(3 downto 0) := "1111";
    
begin
process(clk)
variable state : unsigned (1 downto 0) := (others => '0');
begin


CASE state IS
WHEN 0 => --start
    IRLoad <= '0';
    PCLoad <= '0';
    state := state + 1;
WHEN 1 => --fetch
    IRLoad <= '1';
    PCLoad <= '1';
    state := state + 1;
WHEN 2 => --decode
    IRLoad <= '0';
    PCLoad <= '0';
    state := state + 1;
WHEN 3 => --execute
    IRLoad <= '0';
    PCLoad <= '0';
    state := state + 1;
END CASE;

end process;
end Behavioral;
