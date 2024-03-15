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
  -- signal instruction : unsigned (9 DOWNTO 0) := (others => '0');
  signal instruction : std_logic_vector (9 DOWNTO 0) := (others => '0');
  
  signal test : std_logic_vector(9 downto 0);
  
  
  signal IRLoad : std_logic;
  signal PCLoad : std_logic;
  signal IRMux : std_logic;
  signal IE : std_logic_vector(1 downto 0);
  signal prev_ALU_res : std_logic_vector(9 downto 0);
  signal ID : std_logic_vector(9 downto 0);
  
  signal WA :  unsigned(1 downto 0); --Write address
  signal RAA :  unsigned(1 downto 0); --Read address A
  signal RBA :  unsigned(1 downto 0); --Read address B
  signal WE :  std_logic; --Write enable
  signal RAE :  std_logic; --Read enable A
  signal RBE :  std_logic; --Read enable B
  signal outA : std_logic_vector(9 downto 0); -- Output A
  signal outB : std_logic_vector(9 downto 0); -- Output B
  signal op : std_logic_vector(2 downto 0);
  signal E : std_logic; -- Tri state buffer control
  signal ZE : std_logic;
  signal ZStatus : std_logic; -- ZStatus flag
BEGIN

-- Top level Structural instantiations of all components in CE869_CPU
alu_instance : entity work.ALU
  PORT MAP (
                a => outA,
                b => outB,
                op => op,
                alu_result => prev_ALU_res
    );

zero_flag_reg_instance : entity work.ZERO_FLAG_REG
  PORT MAP (
                clk => clk,
                ZE => ZE,
                input => prev_ALU_res,
                Zstatus => ZStatus
           );

data_output_reg_instance : entity work.DATA_OUTPUT_REG
  PORT MAP (
                E => E,
                input => prev_ALU_res,
                output => data_output
           );

register_file_instance : entity work.REGISTER_FILE
  PORT MAP (
                clk => clk,
                WA=> WA,
                RAA => RAA,
                RBA => RBA,
                WE => WE,
                RAE => RAE,
                RBE => RBE,
                input => ID,
                outA => outA,
                outB => outB
           );

rf_data_mux_instance : entity work.RF_DATA_MUX
  PORT MAP (
                sel => IE,
                instruction => instruction,
                external_input => data_input,
                prev_alu_result => prev_ALU_res,
                output => ID 
           );


contorl_unit_instance : entity work.CONTROL_UNIT
  PORT MAP (
                clk => clk,
                reset => reset,
                IR => instruction,
                IRLoad => IRLoad,
                PCLoad => PCLoad,
                IRMux => IRMux,
                IE => IE,
                WA => WA,
                RAA => RAA,
                RBA => RBA,
                WE => WE,
                RAE => RAE,
                RBE => RBE,
                op => op,
                E => E,
                ZStatus => ZStatus
           );
           
rom_instance : entity work.rom
  PORT MAP (                                                          
        clk  => clk,
        adress => pc,
        output => test
           );

ir_reg_instance : entity work.IR_REG
  PORT MAP (
                D  => test,
                clk  => clk,
                IRLoad => IRLoad,
                IR => instruction
           );
           
ir_mux_instance : entity work.IR_MUX
  PORT MAP (
               INC_in => pc,
               IR_in  => instruction(3 downto 0),
               IRMux => IRLoad,
               IR_out => pc
           );
           
 pc_reg_instance : entity work.PC_REG
  PORT MAP (
               IR_in => pc,
               PCLoad => PCLoad,
               clk => clk,
               reset => reset,
               PC => pc
           );
           
 data_output(9 downto 0) <= test;

-- In this process we can implement the changes to program counter, instruction register 
-- and any other internal signals based on the CPU state
process (clk, reset)
  begin
    if reset = '1' then
    elsif rising_edge(clk) then

    end if;
end process;

END STCTR_CE869_CPU;
