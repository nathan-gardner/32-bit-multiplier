library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder32_tb is
end entity;

architecture testbench of adder32_tb is
-- components
component adder32 is
    port (
        in1, in2 : in std_logic_vector(31 downto 0);
        out1 : out std_logic_vector(31 downto 0)
    );
end component;
-- signals
signal in1, in2: std_logic_vector(31 downto 0);
signal out1: std_logic_vector(31 downto 0);
begin
    UUT: adder32 port map(
        in1 => in1,
        in2 => in2,
        out1 => out1
    );

    testbench: process 
    begin
        in1 <= "01000010101001001000010001001100";
        in2 <= "00000000001000100000010000000000";

        wait for 10 ns;

        in1 <= "00000000001000100000010000000000";
        in2 <= "01000010101001001000010001001100";

        wait for 10 ns;

        in1 <= "01000010101001001000010001001100";
        in2 <= "00000000100000010000001000001000";

        wait for 10 ns;

        in1 <= "00000000001000100000010000000000";
        in2 <= "00000000100000010000001000001000";

        wait for 10 ns;
        wait; 
    end process;
end architecture;