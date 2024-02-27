LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY CE869_CPU IS
  PORT (
          clk         : IN std_logic;
          reset       : IN std_logic;
          data_input  : IN std_logic_vector (15 DOWNTO 0);
          data_output : OUT std_logic_vector (15 DOWNTO 0)
        );
END CE869_CPU;

ARCHITECTURE STCTR_CE869_CPU OF CE869_CPU IS  
  -- Internal signals are defined here for port mapping.

  -- Program counter. The length of pc should be decided by the size of the ROM
  -- and any potential memory mapped IO peripherals, in our case rom has 
  -- 16 memory locations and we dont use any additionl memory mapped IO so pc is 4 bits.
  signal pc : unsigned (3 DOWNTO 0) := (others => '0'); 

  -- IR from the assignment diagram (instruction register)
  signal instruction : unsigned (9 DOWNTO 0) := (others => '0');
  
  signal test : std_logic_vector(9 downto 0);
BEGIN

-- Top level Structural instantiations of all components in CE869_CPU
--alu_instance : entity work.ALU
--  PORT MAP (
--    -- a => ,
--    -- b => ,
--    -- op0 => ,
--    -- op1 => ,
--    -- op2 => ,
--    -- alu_result =>
--    );

--zero_flag_reg_instance : entity work.ZERO_FLAG_REG
--  PORT MAP (
              
--           );

--data_output_reg_instance : entity work.DATA_OUTPUT_REG
--  PORT MAP (
              
--           );

--ir_mux_instance : entity work.IR_MUX
--  PORT MAP (
              
--           );

--register_file_instance : entity work.REGISTER_FILE
--  PORT MAP (
              
--           );

--rf_data_mux_instance : entity work.RF_DATA_MUX
--  PORT MAP (
              
--           );

--contorl_unit_instance : entity work.CONTROL_UNIT
--  PORT MAP (
              
--           );

rom_instance : entity work.rom
  PORT MAP (                                                          
              clk  => clk,
        adress => "0000",
        output => test
           );

-- In this process we can implement the changes to program counter, instruction register 
-- and any other internal signals based on the CPU state
process (clk, reset)
  begin
    if reset = '1' then
    elsif rising_edge(clk) then

    end if;
end process;

END STCTR_CE869_CPU;
