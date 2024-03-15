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
    IRLoad : out std_logic; -- Integral register enable(load next intsruction)
    PCLoad : out std_logic; --Program counter enable (load next counter state)
    IRMux : out std_logic; --IR Mux select
    IE : out std_logic_vector(1 downto 0); --RF_MUX_SELECT
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
variable state : unsigned (2 downto 0) := (others => '0');
begin


CASE state IS
WHEN 0 => --start
    IRLoad <= '0';
    PCLoad <= '0';
    state := state + 1;
    
WHEN 1 => --fetch IR
    IRLoad <= '1';
    PCLoad <= '0';
    state := state + 1;
    
WHEN 2 => --driveMux and counter
    IRLoad <= '0';
    PCLoad <= '1';
    CASE IR is
    WHEN JN =>
        IF ZStatus = '1' then
            IRMux <= '0';
        ELSIF ZStatus = '0' THEN
            IRMux <= '1';
        END IF;
     WHEN JMP => 
        IRMux <= '0';
     WHEN JNZ =>
        IF ZStatus = '1' then
            IRMux <= '1';
        ELSIF ZStatus = '0' THEN
            IRMux <= '0';
        else
            IRMux <= '1';
        END IF;
     END CASE;
    state := state + 1;
    
WHEN 3 => --decode
    IRLoad <= '0';
    PCLoad <= '0';
    CASE IR is
    WHEN HALT =>
        IE <= "00";
        WE <= '0';
        RAE <= '0';
        RBE <= '0';
        op <= "000";
        E <= '0';
        ZE <= '0';
    WHEN MOV => --Writing register to register
        IE <= "10";
        WE <= '1';
        RAE <= '1';
        RBE <= '0';
        op <= "000";
        WA <= UNSIGNED(IR(3 downto 2)); --Write address
        RAA <= UNSIGNED(IR(1 downto 0)); --Read address A
        E <= '0';
        ZE <= '0';
    WHEN IN_in => --Writing register to register
        IE <= "01";
        WE <= '1';
        RAE <= '0';
        RBE <= '0';
        op <= "000";
        WA <= UNSIGNED(IR(1 downto 0)); --Write address
        E <= '0';
        ZE <= '0';
    WHEN OUT_in => --Writing register to register
        IE <= "00";
        WE <= '0';
        RAE <= '1';
        RBE <= '0';
        op <= "000";
        RAA <= UNSIGNED(IR(1 downto 0)); --Read address A
        E <= '1';
        ZE <= '0';
    WHEN NOT_in => --Writing register to register
        IE <= "10";
        WE <= '1';
        RAE <= '1';
        RBE <= '0';
        op <= "001";
        RAA <= UNSIGNED(IR(1 downto 0)); --Read address A
        WA <= UNSIGNED(IR(3 downto 2)); --Write address
        E <= '0';
        ZE <= '1';
    WHEN LT => --Writing register to register TODO
        --TODO
    WHEN INC => --Writing register to register TODO
        --TODO 
    WHEN DEC => --Writing register to register TODO
        --TODO
    WHEN ADD =>
        IE <= "10";
        WE <= '1';
        RAE <= '1';
        RBE <= '1';
        op <= "100";
        RAA <= UNSIGNED(IR(3 downto 2)); --Read address A
        RBA <= UNSIGNED(IR(1 downto 0)); --Read address B
        WA <= UNSIGNED(IR(5 downto 4)); --Write address
        E <= '0';
        ZE <= '1';
    WHEN SUB =>
        IE <= "10";
        WE <= '1';
        RAE <= '1';
        RBE <= '1';
        op <= "101";
        RAA <= UNSIGNED(IR(3 downto 2)); --Read address A
        RBA <= UNSIGNED(IR(1 downto 0)); --Read address B
        WA <= UNSIGNED(IR(5 downto 4)); --Write address
        E <= '0';
        ZE <= '1';
    WHEN AND_in =>
        IE <= "10";
        WE <= '1';
        RAE <= '1';
        RBE <= '1';
        op <= "110";
        RAA <= UNSIGNED(IR(3 downto 2)); --Read address A
        RBA <= UNSIGNED(IR(1 downto 0)); --Read address B
        WA <= UNSIGNED(IR(5 downto 4)); --Write address
        E <= '0';
        ZE <= '1';
    WHEN OR_in =>
        IE <= "10";
        WE <= '1';
        RAE <= '1';
        RBE <= '1';
        op <= "111";
        RAA <= UNSIGNED(IR(3 downto 2)); --Read address A
        RBA <= UNSIGNED(IR(1 downto 0)); --Read address B
        WA <= UNSIGNED(IR(5 downto 4)); --Write address
        E <= '0';
        ZE <= '1';
    WHEN MOV_2 =>
        --TODO
    END CASE;
    state := state + 1;
 
WHEN 4 => --execute
    IRLoad <= '0';
    PCLoad <= '0';
    state := state + 1;
END CASE;

end process;
end Behavioral;
