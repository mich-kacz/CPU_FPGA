LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ALU IS
  PORT (
         a          : IN std_logic_vector (15 DOWNTO 0);
         b          : IN std_logic_vector (15 DOWNTO 0);
         op0        : IN std_logic;
         op1        : IN std_logic;
         op2        : IN std_logic;
         alu_result : OUT std_logic_vector (15 DOWNTO 0)
       );
END ALU;

ARCHITECTURE BHV_ALU OF ALU IS
BEGIN


END BHV_ALU;