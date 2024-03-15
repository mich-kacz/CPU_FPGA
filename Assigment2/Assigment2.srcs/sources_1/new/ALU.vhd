LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY ALU IS
  PORT (
         a          : IN std_logic_vector (9 DOWNTO 0);
         b          : IN std_logic_vector (9 DOWNTO 0);
         op        : IN std_logic_vector (2 downto 0);
         alu_result : OUT std_logic_vector (9 DOWNTO 0)
       );
END ALU;

ARCHITECTURE BHV_ALU OF ALU IS
BEGIN

WITH op SELECT
alu_result <= (a) WHEN "000", --HALT
              (not a) WHEN "001", --NOT
              (std_logic_vector(UNSIGNED(a)+1)) WHEN "010", --INC
              (std_logic_vector(UNSIGNED(a)-1)) WHEN "011", --DEC
              std_logic_vector(UNSIGNED(a) + UNSIGNED(b)) WHEN "100", --ADD
              std_logic_vector(UNSIGNED(a) - UNSIGNED(b)) WHEN "101", --SUB
              (a and b) WHEN "110", --AND
              (a or b) WHEN "111";  --OR




END BHV_ALU;