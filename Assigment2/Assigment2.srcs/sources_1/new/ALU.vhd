LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY ALU IS

generic
    (
    register_length : integer := 16
    );

  PORT (
         a          : IN std_logic_vector (register_length - 1 DOWNTO 0); --Input A
         b          : IN std_logic_vector (register_length - 1 DOWNTO 0); --Input B
         op        : IN std_logic_vector (3 downto 0); --Operation code
         alu_result : OUT std_logic_vector (register_length - 1 DOWNTO 0) --Operation result
       );
END ALU;

ARCHITECTURE BHV_ALU OF ALU IS
BEGIN           

--Instruction decoding
alu_result <= (a) WHEN op="0000" ELSE --PASS
              (not a) WHEN op="0001" ELSE --NOT
              (std_logic_vector(UNSIGNED(a)+1)) WHEN op="0010" ELSE --INC
              (std_logic_vector(UNSIGNED(a)-1)) WHEN op="0011" ELSE --DEC
              std_logic_vector(UNSIGNED(a) + UNSIGNED(b)) WHEN op="0100" ELSE --ADD
              std_logic_vector(UNSIGNED(a) - UNSIGNED(b)) WHEN op="0101" ELSE --SUB
              (a and b) WHEN op="0110" ELSE --AND
              (a or b) WHEN op="0111" ELSE  --OR
              ("0000000000000000") WHEN (op="1000" and a<b) ELSE  --LT
              ("0000000000000001") WHEN (op="1000" and a>b) ELSE  --LT
              (a); --PASS


END BHV_ALU;