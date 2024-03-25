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
    clk : in std_logic; --clock
    reset : in std_logic; --reset signal
    IR : in std_logic_vector (9 downto 0); --Internal register signal
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
    op : out std_logic_vector(3 downto 0);
    E : out std_logic; -- Tri state buffor for data oputput control
    ZE : out std_logic -- ZStatus enable register
);
end CONTROL_UNIT;


architecture Behavioral of CONTROL_UNIT is

    --Instruction codes
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
variable state : unsigned (2 downto 0) := (others => '0'); --State of the control unit (start, fetch, driveMux and counter, execute)
variable incDecCounter : UNSIGNED(3 downto 0) := (others => '0'); --Counter to preform incrementation and decrementation
begin

if rising_edge(clk) then
    
    CASE to_integer(state) IS
    WHEN 0 => --start state
        IRLoad <= '0';
        PCLoad <= '0';
        IE <= "00";
        WE <= '0';
        RAE <= '0';
        RBE <= '0';
        op <= "0000";
        E <= '0';
        ZE <= '0';
        state := state + 1; -- go to next state
        
    WHEN 1 => --fetch IR state
        IRLoad <= '1';
        PCLoad <= '0';
        state := state + 1; -- go to next state
        
    WHEN 2 => --driveMux and counter state
        IRLoad <= '0';
        PCLoad <= '1';
        CASE IR(9 downto 6) is
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
         WHEN others =>
            IRMux <= '1';
         END CASE;
        state := state + 1; -- go to next state
        
    WHEN 3 => --decode/execute state
        IRLoad <= '0';
        PCLoad <= '0';
        CASE IR(9 downto 6) is
        WHEN HALT =>
            IE <= "00";
            WE <= '0';
            RAE <= '0';
            RBE <= '0';
            op <= "0000";
            E <= '0';
            ZE <= '0';
        WHEN MOV => --Writing register to register
            IE <= "10";
            WE <= '1';
            RAE <= '1';
            RBE <= '0';
            op <= "0000";
            WA <= UNSIGNED(IR(3 downto 2)); --Write address
            RAA <= UNSIGNED(IR(1 downto 0)); --Read address A
            E <= '0';
            ZE <= '0';
        WHEN IN_in => --Writing external input to register
            IE <= "01";
            WE <= '1';
            RAE <= '0';
            RBE <= '0';
            op <= "0000";
            WA <= UNSIGNED(IR(1 downto 0)); --Write address
            E <= '0';
            ZE <= '0';
        WHEN OUT_in => --Outputing register
            IE <= "00";
            WE <= '0';
            RAE <= '1';
            RBE <= '0';
            op <= "0000";
            RAA <= UNSIGNED(IR(1 downto 0)); --Read address A
            E <= '1';
            ZE <= '0';
        WHEN NOT_in => --Not operation
            IE <= "10";
            WE <= '1';
            RAE <= '1';
            RBE <= '0';
            op <= "0001";
            RAA <= UNSIGNED(IR(1 downto 0)); --Read address A
            WA <= UNSIGNED(IR(3 downto 2)); --Write address
            E <= '0';
            ZE <= '1';
        WHEN LT => --Less than operation
            IE <= "00";
            WE <= '0';
            RAE <= '1';
            RBE <= '1';
            op <= "1000";
            RAA <= UNSIGNED(IR(1 downto 0)); --Read address A
            RBA <= UNSIGNED(IR(3 downto 2)); --Write address
            E <= '0';
            ZE <= '1';
        WHEN INC => -- Incrementation by nnnnn
            IF incDecCounter < UNSIGNED(IR(3 downto 0)) then -- If incrementet less than nnnnn
                IE <= "00";
                WE <= '1';
                RAE <= '1';
                RBE <= '0';
                op <= "0010";
                RAA <= UNSIGNED(IR(5 downto 4)); --Read address A
                WA <= UNSIGNED(IR(5 downto 4)); --Write address
                E <= '0';
                ZE <= '1';
                state := state;
            else --If incrementation finished go to start state
                IE <= "00";
                WE <= '0';
                RAE <= '0';
                RBE <= '0';
                op <= "0000";
                E <= '0';
                ZE <= '0';
                state := to_unsigned(0, 3);
            END IF;
             
        WHEN DEC => -- Decremenation by nnnnn
            IF incDecCounter < UNSIGNED(IR(3 downto 0)) then -- If decrementedtet less than nnnnn
                IE <= "00";
                WE <= '1';
                RAE <= '1';
                RBE <= '0';
                op <= "0011";
                RAA <= UNSIGNED(IR(5 downto 4)); --Read address A
                WA <= UNSIGNED(IR(5 downto 4)); --Write address
                E <= '0';
                ZE <= '1';
                state := state;
            else  --If decrementation finished go to start state
                IE <= "00";
                WE <= '0';
                RAE <= '0';
                RBE <= '0';
                op <= "0000";
                E <= '0';
                ZE <= '0';
                state := to_unsigned(0, 3);
            END IF;
        WHEN ADD => -- Addition operation
            IE <= "10";
            WE <= '1';
            RAE <= '1';
            RBE <= '1';
            op <= "0100";
            RAA <= UNSIGNED(IR(3 downto 2)); --Read address A
            RBA <= UNSIGNED(IR(1 downto 0)); --Read address B
            WA <= UNSIGNED(IR(5 downto 4)); --Write address
            E <= '0';
            ZE <= '1';
        WHEN SUB => --Substraction operation
            IE <= "10";
            WE <= '1';
            RAE <= '1';
            RBE <= '1';
            op <= "0101";
            RAA <= UNSIGNED(IR(3 downto 2)); --Read address A
            RBA <= UNSIGNED(IR(1 downto 0)); --Read address B
            WA <= UNSIGNED(IR(5 downto 4)); --Write address
            E <= '0';
            ZE <= '1';
        WHEN AND_in => -- And operation
            IE <= "10";
            WE <= '1';
            RAE <= '1';
            RBE <= '1';
            op <= "0110";
            RAA <= UNSIGNED(IR(3 downto 2)); --Read address A
            RBA <= UNSIGNED(IR(1 downto 0)); --Read address B
            WA <= UNSIGNED(IR(5 downto 4)); --Write address
            E <= '0';
            ZE <= '1';
        WHEN OR_in => -- OR operation
            IE <= "10";
            WE <= '1';
            RAE <= '1';
            RBE <= '1';
            op <= "0111";
            RAA <= UNSIGNED(IR(3 downto 2)); --Read address A
            RBA <= UNSIGNED(IR(1 downto 0)); --Read address B
            WA <= UNSIGNED(IR(5 downto 4)); --Write address
            E <= '0';
            ZE <= '1';
        WHEN MOV_2 => --Move value from nnnnn instruction
            IE <= "00";
            WE <= '1';
            WA <= UNSIGNED(IR(5 downto 4)); --Write address
            RAE <= '0';
            RBE <= '0';
            op <= "0000";
            E <= '0';
            ZE <= '0';
        WHEN OTHERS => --If others => HALT
            IE <= "00";
            WE <= '0';
            RAE <= '0';
            RBE <= '0';
            op <= "0000";
            E <= '0';
            ZE <= '0';
        END CASE;
        if (IR /= INC and IR /= DEC) THEN
            state := to_unsigned(0, 3); -- go to next state if not performing incrementation or decremantation
        END IF;
    WHEN OTHERS =>
        state := to_unsigned(0, 3);
    END CASE;

end if;
end process;
end Behavioral;
