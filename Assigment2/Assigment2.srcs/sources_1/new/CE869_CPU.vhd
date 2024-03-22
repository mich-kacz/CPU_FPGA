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
  signal pcIRMux : unsigned (3 DOWNTO 0) := (others => '0'); --PC signal between mux and PC register
  signal PC_next : unsigned (3 DOWNTO 0) := (others => '0'); -- Next PC value signal

  -- IR from the assignment diagram (instruction register)
  -- signal instruction : unsigned (9 DOWNTO 0) := (others => '0');
  signal instruction : std_logic_vector (9 DOWNTO 0) := (others => '0'); 
  
  signal D : std_logic_vector(9 downto 0); -- input signal from rom to Internal register
  
  -- Control unit parameters
  signal IRLoad : std_logic; --Enable IR instruction fetch
  signal PCLoad : std_logic; --Enable program counter fetch
  signal IRMux : std_logic; --singal to choose IR Mux state
  signal IE : std_logic_vector(1 downto 0); --Signal to choose RF Mux state
  signal prev_ALU_res : std_logic_vector(15 downto 0); -- Previous ALU result
  signal ID : std_logic_vector(15 downto 0); -- Signal between RF Mux and RF register
  
  signal WA :  unsigned(1 downto 0); --Write address
  signal RAA :  unsigned(1 downto 0); --Read address A
  signal RBA :  unsigned(1 downto 0); --Read address B
  signal WE :  std_logic; --Write enable
  signal RAE :  std_logic; --Read enable A
  signal RBE :  std_logic; --Read enable B
  signal outA : std_logic_vector(15 downto 0); -- Output A from RF register
  signal outB : std_logic_vector(15 downto 0); -- Output B from RF register
  signal op : std_logic_vector(3 downto 0); --4 bits to choose operation in ALU
  signal E : std_logic; -- Tri state buffer control
  signal ZE : std_logic; --Enable Z flag
  signal ZStatus : std_logic; -- ZStatus flag
BEGIN

-- Top level Structural instantiations of all components in CE869_CPU

--ALU instation
alu_instance : entity work.ALU
  PORT MAP (
                a => outA,
                b => outB,
                op => op,
                alu_result => prev_ALU_res
    );

--Zero flag instation
zero_flag_reg_instance : entity work.ZERO_FLAG_REG
  PORT MAP (
                clk => clk,
                ZE => ZE,
                input => prev_ALU_res,
                Zstatus => ZStatus
           );


--Data output register instation
data_output_reg_instance : entity work.DATA_OUTPUT_REG
  PORT MAP (
                E => E,
                input => prev_ALU_res,
                output => data_output
           );


--Register File instation
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


--Register file data mux instation
rf_data_mux_instance : entity work.RF_DATA_MUX
  PORT MAP (
                sel => IE,
                instruction => instruction(3 downto 0),
                external_input => data_input,
                prev_alu_result => prev_ALU_res,
                output => ID 
           );


--Control unit instation
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
                ZStatus => ZStatus,
                ZE => ZE
           );
           
-- ROM instation
rom_instance : entity work.rom
  PORT MAP (                                                          
        clk  => clk,
        adress => pc,
        output => D
           );

--Internal register instation
ir_reg_instance : entity work.IR_REG
  PORT MAP (
                D  => D,
                clk  => clk,
                IRLoad => IRLoad,
                IR => instruction
           );

--Internal register multiplexer instation         
ir_mux_instance : entity work.IR_MUX
  PORT MAP (
               INC_in => PC_next,
               IR_in  => instruction(3 downto 0),
               IRMux => IRMux,
               IR_out => pcIRMux
           );
           
 --Program counter register
 pc_reg_instance : entity work.PC_REG
  PORT MAP (   
               IR_in => pcIRMux,
               PCLoad => PCLoad,
               clk => clk,
               reset => reset,
               PC => pc,
               PC_next => PC_next
           );
        

END STCTR_CE869_CPU;
