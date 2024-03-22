-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Mar 20 10:41:23 2024
-- Host        : cseelab838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               M:/pc/desktop/HighLevelLogic/Assigment2/Assigment2/Assigment2.sim/sim_1/synth/func/xsim/CE869_CPU_SYS_func_synth.vhd
-- Design      : CE869_CPU_SYS
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity frequency_divider is
  port (
    CLK : out STD_LOGIC;
    \^clk\ : in STD_LOGIC
  );
end frequency_divider;

architecture STRUCTURE of frequency_divider is
  signal \^clk_1\ : STD_LOGIC;
  signal ckState_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[0]_i_7_n_0\ : STD_LOGIC;
  signal \state[0]_i_8_n_0\ : STD_LOGIC;
  signal \state[0]_i_9_n_0\ : STD_LOGIC;
  signal state_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \state_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \state_reg[0]_i_10_n_1\ : STD_LOGIC;
  signal \state_reg[0]_i_10_n_2\ : STD_LOGIC;
  signal \state_reg[0]_i_10_n_3\ : STD_LOGIC;
  signal \state_reg[0]_i_10_n_4\ : STD_LOGIC;
  signal \state_reg[0]_i_10_n_5\ : STD_LOGIC;
  signal \state_reg[0]_i_10_n_6\ : STD_LOGIC;
  signal \state_reg[0]_i_10_n_7\ : STD_LOGIC;
  signal \state_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \state_reg[0]_i_11_n_1\ : STD_LOGIC;
  signal \state_reg[0]_i_11_n_2\ : STD_LOGIC;
  signal \state_reg[0]_i_11_n_3\ : STD_LOGIC;
  signal \state_reg[0]_i_11_n_4\ : STD_LOGIC;
  signal \state_reg[0]_i_11_n_5\ : STD_LOGIC;
  signal \state_reg[0]_i_11_n_6\ : STD_LOGIC;
  signal \state_reg[0]_i_11_n_7\ : STD_LOGIC;
  signal \state_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \state_reg[0]_i_12_n_1\ : STD_LOGIC;
  signal \state_reg[0]_i_12_n_2\ : STD_LOGIC;
  signal \state_reg[0]_i_12_n_3\ : STD_LOGIC;
  signal \state_reg[0]_i_12_n_4\ : STD_LOGIC;
  signal \state_reg[0]_i_12_n_5\ : STD_LOGIC;
  signal \state_reg[0]_i_12_n_6\ : STD_LOGIC;
  signal \state_reg[0]_i_12_n_7\ : STD_LOGIC;
  signal \state_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \state_reg[0]_i_13_n_1\ : STD_LOGIC;
  signal \state_reg[0]_i_13_n_2\ : STD_LOGIC;
  signal \state_reg[0]_i_13_n_3\ : STD_LOGIC;
  signal \state_reg[0]_i_13_n_4\ : STD_LOGIC;
  signal \state_reg[0]_i_13_n_5\ : STD_LOGIC;
  signal \state_reg[0]_i_13_n_6\ : STD_LOGIC;
  signal \state_reg[0]_i_13_n_7\ : STD_LOGIC;
  signal \state_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \state_reg[0]_i_14_n_1\ : STD_LOGIC;
  signal \state_reg[0]_i_14_n_2\ : STD_LOGIC;
  signal \state_reg[0]_i_14_n_3\ : STD_LOGIC;
  signal \state_reg[0]_i_14_n_4\ : STD_LOGIC;
  signal \state_reg[0]_i_14_n_5\ : STD_LOGIC;
  signal \state_reg[0]_i_14_n_6\ : STD_LOGIC;
  signal \state_reg[0]_i_14_n_7\ : STD_LOGIC;
  signal \state_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \state_reg[0]_i_15_n_1\ : STD_LOGIC;
  signal \state_reg[0]_i_15_n_2\ : STD_LOGIC;
  signal \state_reg[0]_i_15_n_3\ : STD_LOGIC;
  signal \state_reg[0]_i_15_n_4\ : STD_LOGIC;
  signal \state_reg[0]_i_15_n_5\ : STD_LOGIC;
  signal \state_reg[0]_i_15_n_6\ : STD_LOGIC;
  signal \state_reg[0]_i_15_n_7\ : STD_LOGIC;
  signal \state_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \state_reg[0]_i_16_n_1\ : STD_LOGIC;
  signal \state_reg[0]_i_16_n_2\ : STD_LOGIC;
  signal \state_reg[0]_i_16_n_3\ : STD_LOGIC;
  signal \state_reg[0]_i_16_n_4\ : STD_LOGIC;
  signal \state_reg[0]_i_16_n_5\ : STD_LOGIC;
  signal \state_reg[0]_i_16_n_6\ : STD_LOGIC;
  signal \state_reg[0]_i_16_n_7\ : STD_LOGIC;
  signal \state_reg[0]_i_17_n_2\ : STD_LOGIC;
  signal \state_reg[0]_i_17_n_3\ : STD_LOGIC;
  signal \state_reg[0]_i_17_n_5\ : STD_LOGIC;
  signal \state_reg[0]_i_17_n_6\ : STD_LOGIC;
  signal \state_reg[0]_i_17_n_7\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_state_reg[0]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state_reg[0]_i_17_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \state_reg[0]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \state_reg[0]_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \state_reg[0]_i_12\ : label is 35;
  attribute ADDER_THRESHOLD of \state_reg[0]_i_13\ : label is 35;
  attribute ADDER_THRESHOLD of \state_reg[0]_i_14\ : label is 35;
  attribute ADDER_THRESHOLD of \state_reg[0]_i_15\ : label is 35;
  attribute ADDER_THRESHOLD of \state_reg[0]_i_16\ : label is 35;
  attribute ADDER_THRESHOLD of \state_reg[0]_i_17\ : label is 35;
  attribute ADDER_THRESHOLD of \state_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \state_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \state_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \state_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \state_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \state_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \state_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \state_reg[8]_i_1\ : label is 11;
begin
  CLK <= \^clk_1\;
ckState_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clear,
      I1 => \^clk_1\,
      O => ckState_i_1_n_0
    );
ckState_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => ckState_i_1_n_0,
      Q => \^clk_1\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \state[0]_i_3_n_0\,
      I1 => \state[0]_i_4_n_0\,
      I2 => \state[0]_i_5_n_0\,
      I3 => \state[0]_i_6_n_0\,
      I4 => \state[0]_i_7_n_0\,
      I5 => \state[0]_i_8_n_0\,
      O => clear
    );
\state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg[0]_i_10_n_7\,
      I1 => \state_reg[0]_i_10_n_6\,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \state_reg[0]_i_11_n_7\,
      I1 => \state_reg[0]_i_11_n_6\,
      I2 => \state_reg[0]_i_10_n_4\,
      I3 => \state_reg[0]_i_10_n_5\,
      I4 => \state_reg[0]_i_11_n_4\,
      I5 => \state_reg[0]_i_11_n_5\,
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \state_reg[0]_i_12_n_4\,
      I1 => \state_reg[0]_i_12_n_5\,
      I2 => \state_reg[0]_i_12_n_7\,
      I3 => \state_reg[0]_i_12_n_6\,
      I4 => \state_reg[0]_i_13_n_7\,
      I5 => \state_reg[0]_i_13_n_6\,
      O => \state[0]_i_5_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \state_reg[0]_i_14_n_7\,
      I1 => \state_reg[0]_i_14_n_6\,
      I2 => \state_reg[0]_i_13_n_5\,
      I3 => \state_reg[0]_i_13_n_4\,
      I4 => \state_reg[0]_i_14_n_4\,
      I5 => \state_reg[0]_i_14_n_5\,
      O => \state[0]_i_6_n_0\
    );
\state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \state_reg[0]_i_15_n_5\,
      I1 => \state_reg[0]_i_15_n_4\,
      I2 => \state_reg[0]_i_15_n_7\,
      I3 => \state_reg[0]_i_15_n_6\,
      I4 => \state_reg[0]_i_16_n_6\,
      I5 => \state_reg[0]_i_16_n_7\,
      O => \state[0]_i_7_n_0\
    );
\state[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \state_reg[0]_i_17_n_7\,
      I1 => \state_reg[0]_i_17_n_6\,
      I2 => \state_reg[0]_i_16_n_5\,
      I3 => \state_reg[0]_i_16_n_4\,
      I4 => \state_reg[0]_i_17_n_5\,
      I5 => state_reg(0),
      O => \state[0]_i_8_n_0\
    );
\state[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(0),
      O => \state[0]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[0]_i_2_n_7\,
      Q => state_reg(0),
      R => clear
    );
\state_reg[0]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state_reg[0]_i_10_n_0\,
      CO(2) => \state_reg[0]_i_10_n_1\,
      CO(1) => \state_reg[0]_i_10_n_2\,
      CO(0) => \state_reg[0]_i_10_n_3\,
      CYINIT => state_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[0]_i_10_n_4\,
      O(2) => \state_reg[0]_i_10_n_5\,
      O(1) => \state_reg[0]_i_10_n_6\,
      O(0) => \state_reg[0]_i_10_n_7\,
      S(3 downto 0) => state_reg(4 downto 1)
    );
\state_reg[0]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[0]_i_10_n_0\,
      CO(3) => \state_reg[0]_i_11_n_0\,
      CO(2) => \state_reg[0]_i_11_n_1\,
      CO(1) => \state_reg[0]_i_11_n_2\,
      CO(0) => \state_reg[0]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[0]_i_11_n_4\,
      O(2) => \state_reg[0]_i_11_n_5\,
      O(1) => \state_reg[0]_i_11_n_6\,
      O(0) => \state_reg[0]_i_11_n_7\,
      S(3 downto 0) => state_reg(8 downto 5)
    );
\state_reg[0]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[0]_i_11_n_0\,
      CO(3) => \state_reg[0]_i_12_n_0\,
      CO(2) => \state_reg[0]_i_12_n_1\,
      CO(1) => \state_reg[0]_i_12_n_2\,
      CO(0) => \state_reg[0]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[0]_i_12_n_4\,
      O(2) => \state_reg[0]_i_12_n_5\,
      O(1) => \state_reg[0]_i_12_n_6\,
      O(0) => \state_reg[0]_i_12_n_7\,
      S(3 downto 0) => state_reg(12 downto 9)
    );
\state_reg[0]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[0]_i_12_n_0\,
      CO(3) => \state_reg[0]_i_13_n_0\,
      CO(2) => \state_reg[0]_i_13_n_1\,
      CO(1) => \state_reg[0]_i_13_n_2\,
      CO(0) => \state_reg[0]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[0]_i_13_n_4\,
      O(2) => \state_reg[0]_i_13_n_5\,
      O(1) => \state_reg[0]_i_13_n_6\,
      O(0) => \state_reg[0]_i_13_n_7\,
      S(3 downto 0) => state_reg(16 downto 13)
    );
\state_reg[0]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[0]_i_13_n_0\,
      CO(3) => \state_reg[0]_i_14_n_0\,
      CO(2) => \state_reg[0]_i_14_n_1\,
      CO(1) => \state_reg[0]_i_14_n_2\,
      CO(0) => \state_reg[0]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[0]_i_14_n_4\,
      O(2) => \state_reg[0]_i_14_n_5\,
      O(1) => \state_reg[0]_i_14_n_6\,
      O(0) => \state_reg[0]_i_14_n_7\,
      S(3 downto 0) => state_reg(20 downto 17)
    );
\state_reg[0]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[0]_i_14_n_0\,
      CO(3) => \state_reg[0]_i_15_n_0\,
      CO(2) => \state_reg[0]_i_15_n_1\,
      CO(1) => \state_reg[0]_i_15_n_2\,
      CO(0) => \state_reg[0]_i_15_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[0]_i_15_n_4\,
      O(2) => \state_reg[0]_i_15_n_5\,
      O(1) => \state_reg[0]_i_15_n_6\,
      O(0) => \state_reg[0]_i_15_n_7\,
      S(3 downto 0) => state_reg(24 downto 21)
    );
\state_reg[0]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[0]_i_15_n_0\,
      CO(3) => \state_reg[0]_i_16_n_0\,
      CO(2) => \state_reg[0]_i_16_n_1\,
      CO(1) => \state_reg[0]_i_16_n_2\,
      CO(0) => \state_reg[0]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[0]_i_16_n_4\,
      O(2) => \state_reg[0]_i_16_n_5\,
      O(1) => \state_reg[0]_i_16_n_6\,
      O(0) => \state_reg[0]_i_16_n_7\,
      S(3 downto 0) => state_reg(28 downto 25)
    );
\state_reg[0]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[0]_i_16_n_0\,
      CO(3 downto 2) => \NLW_state_reg[0]_i_17_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \state_reg[0]_i_17_n_2\,
      CO(0) => \state_reg[0]_i_17_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_state_reg[0]_i_17_O_UNCONNECTED\(3),
      O(2) => \state_reg[0]_i_17_n_5\,
      O(1) => \state_reg[0]_i_17_n_6\,
      O(0) => \state_reg[0]_i_17_n_7\,
      S(3) => '0',
      S(2 downto 0) => state_reg(31 downto 29)
    );
\state_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state_reg[0]_i_2_n_0\,
      CO(2) => \state_reg[0]_i_2_n_1\,
      CO(1) => \state_reg[0]_i_2_n_2\,
      CO(0) => \state_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \state_reg[0]_i_2_n_4\,
      O(2) => \state_reg[0]_i_2_n_5\,
      O(1) => \state_reg[0]_i_2_n_6\,
      O(0) => \state_reg[0]_i_2_n_7\,
      S(3 downto 1) => state_reg(3 downto 1),
      S(0) => \state[0]_i_9_n_0\
    );
\state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[8]_i_1_n_5\,
      Q => state_reg(10),
      R => clear
    );
\state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[8]_i_1_n_4\,
      Q => state_reg(11),
      R => clear
    );
\state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[12]_i_1_n_7\,
      Q => state_reg(12),
      R => clear
    );
\state_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[8]_i_1_n_0\,
      CO(3) => \state_reg[12]_i_1_n_0\,
      CO(2) => \state_reg[12]_i_1_n_1\,
      CO(1) => \state_reg[12]_i_1_n_2\,
      CO(0) => \state_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[12]_i_1_n_4\,
      O(2) => \state_reg[12]_i_1_n_5\,
      O(1) => \state_reg[12]_i_1_n_6\,
      O(0) => \state_reg[12]_i_1_n_7\,
      S(3 downto 0) => state_reg(15 downto 12)
    );
\state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[12]_i_1_n_6\,
      Q => state_reg(13),
      R => clear
    );
\state_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[12]_i_1_n_5\,
      Q => state_reg(14),
      R => clear
    );
\state_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[12]_i_1_n_4\,
      Q => state_reg(15),
      R => clear
    );
\state_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[16]_i_1_n_7\,
      Q => state_reg(16),
      R => clear
    );
\state_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[12]_i_1_n_0\,
      CO(3) => \state_reg[16]_i_1_n_0\,
      CO(2) => \state_reg[16]_i_1_n_1\,
      CO(1) => \state_reg[16]_i_1_n_2\,
      CO(0) => \state_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[16]_i_1_n_4\,
      O(2) => \state_reg[16]_i_1_n_5\,
      O(1) => \state_reg[16]_i_1_n_6\,
      O(0) => \state_reg[16]_i_1_n_7\,
      S(3 downto 0) => state_reg(19 downto 16)
    );
\state_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[16]_i_1_n_6\,
      Q => state_reg(17),
      R => clear
    );
\state_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[16]_i_1_n_5\,
      Q => state_reg(18),
      R => clear
    );
\state_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[16]_i_1_n_4\,
      Q => state_reg(19),
      R => clear
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[0]_i_2_n_6\,
      Q => state_reg(1),
      R => clear
    );
\state_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[20]_i_1_n_7\,
      Q => state_reg(20),
      R => clear
    );
\state_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[16]_i_1_n_0\,
      CO(3) => \state_reg[20]_i_1_n_0\,
      CO(2) => \state_reg[20]_i_1_n_1\,
      CO(1) => \state_reg[20]_i_1_n_2\,
      CO(0) => \state_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[20]_i_1_n_4\,
      O(2) => \state_reg[20]_i_1_n_5\,
      O(1) => \state_reg[20]_i_1_n_6\,
      O(0) => \state_reg[20]_i_1_n_7\,
      S(3 downto 0) => state_reg(23 downto 20)
    );
\state_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[20]_i_1_n_6\,
      Q => state_reg(21),
      R => clear
    );
\state_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[20]_i_1_n_5\,
      Q => state_reg(22),
      R => clear
    );
\state_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[20]_i_1_n_4\,
      Q => state_reg(23),
      R => clear
    );
\state_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[24]_i_1_n_7\,
      Q => state_reg(24),
      R => clear
    );
\state_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[20]_i_1_n_0\,
      CO(3) => \state_reg[24]_i_1_n_0\,
      CO(2) => \state_reg[24]_i_1_n_1\,
      CO(1) => \state_reg[24]_i_1_n_2\,
      CO(0) => \state_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[24]_i_1_n_4\,
      O(2) => \state_reg[24]_i_1_n_5\,
      O(1) => \state_reg[24]_i_1_n_6\,
      O(0) => \state_reg[24]_i_1_n_7\,
      S(3 downto 0) => state_reg(27 downto 24)
    );
\state_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[24]_i_1_n_6\,
      Q => state_reg(25),
      R => clear
    );
\state_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[24]_i_1_n_5\,
      Q => state_reg(26),
      R => clear
    );
\state_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[24]_i_1_n_4\,
      Q => state_reg(27),
      R => clear
    );
\state_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[28]_i_1_n_7\,
      Q => state_reg(28),
      R => clear
    );
\state_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[24]_i_1_n_0\,
      CO(3) => \NLW_state_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \state_reg[28]_i_1_n_1\,
      CO(1) => \state_reg[28]_i_1_n_2\,
      CO(0) => \state_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[28]_i_1_n_4\,
      O(2) => \state_reg[28]_i_1_n_5\,
      O(1) => \state_reg[28]_i_1_n_6\,
      O(0) => \state_reg[28]_i_1_n_7\,
      S(3 downto 0) => state_reg(31 downto 28)
    );
\state_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[28]_i_1_n_6\,
      Q => state_reg(29),
      R => clear
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[0]_i_2_n_5\,
      Q => state_reg(2),
      R => clear
    );
\state_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[28]_i_1_n_5\,
      Q => state_reg(30),
      R => clear
    );
\state_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[28]_i_1_n_4\,
      Q => state_reg(31),
      R => clear
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[0]_i_2_n_4\,
      Q => state_reg(3),
      R => clear
    );
\state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[4]_i_1_n_7\,
      Q => state_reg(4),
      R => clear
    );
\state_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[0]_i_2_n_0\,
      CO(3) => \state_reg[4]_i_1_n_0\,
      CO(2) => \state_reg[4]_i_1_n_1\,
      CO(1) => \state_reg[4]_i_1_n_2\,
      CO(0) => \state_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[4]_i_1_n_4\,
      O(2) => \state_reg[4]_i_1_n_5\,
      O(1) => \state_reg[4]_i_1_n_6\,
      O(0) => \state_reg[4]_i_1_n_7\,
      S(3 downto 0) => state_reg(7 downto 4)
    );
\state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[4]_i_1_n_6\,
      Q => state_reg(5),
      R => clear
    );
\state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[4]_i_1_n_5\,
      Q => state_reg(6),
      R => clear
    );
\state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[4]_i_1_n_4\,
      Q => state_reg(7),
      R => clear
    );
\state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[8]_i_1_n_7\,
      Q => state_reg(8),
      R => clear
    );
\state_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[4]_i_1_n_0\,
      CO(3) => \state_reg[8]_i_1_n_0\,
      CO(2) => \state_reg[8]_i_1_n_1\,
      CO(1) => \state_reg[8]_i_1_n_2\,
      CO(0) => \state_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[8]_i_1_n_4\,
      O(2) => \state_reg[8]_i_1_n_5\,
      O(1) => \state_reg[8]_i_1_n_6\,
      O(0) => \state_reg[8]_i_1_n_7\,
      S(3 downto 0) => state_reg(11 downto 8)
    );
\state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \state_reg[8]_i_1_n_6\,
      Q => state_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity one_digit is
  port (
    seg_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end one_digit;

architecture STRUCTURE of one_digit is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg_OBUF[2]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_OBUF[4]_inst_i_1\ : label is "soft_lutpair0";
begin
\seg_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEC8"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => seg_OBUF(2)
    );
\seg_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB0"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => seg_OBUF(1)
    );
\seg_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => seg_OBUF(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity four_digits is
  port (
    seg_OBUF : out STD_LOGIC_VECTOR ( 0 to 6 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
end four_digits;

architecture STRUCTURE of four_digits is
  signal \an[0]_i_1_n_0\ : STD_LOGIC;
  signal \an[1]_i_1_n_0\ : STD_LOGIC;
  signal \an[2]_i_1_n_0\ : STD_LOGIC;
  signal \an[3]_i_1_n_0\ : STD_LOGIC;
  signal digit : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \digit__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \digit_reg_n_0_[0]\ : STD_LOGIC;
  signal \digit_reg_n_0_[1]\ : STD_LOGIC;
  signal \digit_reg_n_0_[2]\ : STD_LOGIC;
  signal \digit_reg_n_0_[3]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \an[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \an[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \an[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \seg_OBUF[0]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_OBUF[3]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_OBUF[5]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_OBUF[6]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair3";
begin
\an[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \an[0]_i_1_n_0\
    );
\an[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \an[1]_i_1_n_0\
    );
\an[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \an[2]_i_1_n_0\
    );
\an[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \an[3]_i_1_n_0\
    );
\an_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \an[0]_i_1_n_0\,
      Q => Q(0),
      R => '0'
    );
\an_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \an[1]_i_1_n_0\,
      Q => Q(1),
      R => '0'
    );
\an_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \an[2]_i_1_n_0\,
      Q => Q(2),
      R => '0'
    );
\an_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \an[3]_i_1_n_0\,
      Q => Q(3),
      R => '0'
    );
\digit[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => digit(4),
      I1 => digit(0),
      I2 => digit(12),
      I3 => state(0),
      I4 => state(1),
      I5 => digit(8),
      O => \digit__0\(0)
    );
\digit[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(4)
    );
\digit[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(0)
    );
\digit[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(12)
    );
\digit[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(8)
    );
\digit[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => digit(5),
      I1 => digit(1),
      I2 => digit(13),
      I3 => state(0),
      I4 => state(1),
      I5 => digit(9),
      O => \digit__0\(1)
    );
\digit[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(5)
    );
\digit[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(1)
    );
\digit[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(13)
    );
\digit[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(9)
    );
\digit[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => digit(6),
      I1 => digit(2),
      I2 => digit(14),
      I3 => state(0),
      I4 => state(1),
      I5 => digit(10),
      O => \digit__0\(2)
    );
\digit[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(6)
    );
\digit[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(2)
    );
\digit[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(14)
    );
\digit[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(10)
    );
\digit[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => digit(7),
      I1 => digit(3),
      I2 => digit(15),
      I3 => state(0),
      I4 => state(1),
      I5 => digit(11),
      O => \digit__0\(3)
    );
\digit[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(7)
    );
\digit[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(3)
    );
\digit[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(15)
    );
\digit[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => digit(11)
    );
\digit_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \digit__0\(0),
      Q => \digit_reg_n_0_[0]\,
      R => '0'
    );
\digit_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \digit__0\(1),
      Q => \digit_reg_n_0_[1]\,
      R => '0'
    );
\digit_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \digit__0\(2),
      Q => \digit_reg_n_0_[2]\,
      R => '0'
    );
\digit_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \digit__0\(3),
      Q => \digit_reg_n_0_[3]\,
      R => '0'
    );
one_digit_unit: entity work.one_digit
     port map (
      Q(3) => \digit_reg_n_0_[3]\,
      Q(2) => \digit_reg_n_0_[2]\,
      Q(1) => \digit_reg_n_0_[1]\,
      Q(0) => \digit_reg_n_0_[0]\,
      seg_OBUF(2) => seg_OBUF(1),
      seg_OBUF(1) => seg_OBUF(2),
      seg_OBUF(0) => seg_OBUF(4)
    );
\seg_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => \digit_reg_n_0_[1]\,
      I1 => \digit_reg_n_0_[0]\,
      I2 => \digit_reg_n_0_[2]\,
      I3 => \digit_reg_n_0_[3]\,
      O => seg_OBUF(0)
    );
\seg_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0094"
    )
        port map (
      I0 => \digit_reg_n_0_[1]\,
      I1 => \digit_reg_n_0_[0]\,
      I2 => \digit_reg_n_0_[2]\,
      I3 => \digit_reg_n_0_[3]\,
      O => seg_OBUF(3)
    );
\seg_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008E"
    )
        port map (
      I0 => \digit_reg_n_0_[1]\,
      I1 => \digit_reg_n_0_[0]\,
      I2 => \digit_reg_n_0_[2]\,
      I3 => \digit_reg_n_0_[3]\,
      O => seg_OBUF(5)
    );
\seg_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0091"
    )
        port map (
      I0 => \digit_reg_n_0_[1]\,
      I1 => \digit_reg_n_0_[2]\,
      I2 => \digit_reg_n_0_[0]\,
      I3 => \digit_reg_n_0_[3]\,
      O => seg_OBUF(6)
    );
\state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CE869_CPU_SYS is
  port (
    clk : in STD_LOGIC;
    btnC : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 0 to 6 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of CE869_CPU_SYS : entity is true;
end CE869_CPU_SYS;

architecture STRUCTURE of CE869_CPU_SYS is
  signal an_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ck : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal seg_OBUF : STD_LOGIC_VECTOR ( 0 to 6 );
begin
\an_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(0),
      O => an(0)
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(1),
      O => an(1)
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(2),
      O => an(2)
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(3),
      O => an(3)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
freq_div: entity work.frequency_divider
     port map (
      CLK => ck,
      \^clk\ => clk_IBUF_BUFG
    );
\seg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(0),
      O => seg(0)
    );
\seg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(1),
      O => seg(1)
    );
\seg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(2),
      O => seg(2)
    );
\seg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(3),
      O => seg(3)
    );
\seg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(4),
      O => seg(4)
    );
\seg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(5),
      O => seg(5)
    );
\seg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(6),
      O => seg(6)
    );
svn_sgmnt_drv_instance: entity work.four_digits
     port map (
      CLK => ck,
      Q(3 downto 0) => an_OBUF(3 downto 0),
      seg_OBUF(0 to 6) => seg_OBUF(0 to 6)
    );
end STRUCTURE;
