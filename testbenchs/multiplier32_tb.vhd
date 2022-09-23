library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier32_tb is
end entity;

architecture testbench of multiplier32_tb is
    -- components
    component multiplier32 is
        port(
            product: out std_logic_vector(63 downto 0);
            load_con, add_con, shift_con: out std_logic;
            multiplicand: in std_logic_vector(31 downto 0);
            multiplier: in std_logic_vector(31 downto 0);
            reset: in std_logic;
            clk: in std_logic;
			count_out: out integer;
            adder_result: out std_logic_vector(31 downto 0)
        );
    end component;
    
    -- signals
    signal product: std_logic_vector(63 downto 0);
    signal multiplicand: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(5, 32));
    signal multiplier: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(34, 32));
    signal reset: std_logic := '0';
    signal clk: std_logic := '0';
    signal load_con, add_con, shift_con: std_logic := '0';
    signal count_out: integer := 0;
    signal adder_result: std_logic_vector(31 downto 0);
begin
    UUT: multiplier32 port map(product => product, load_con => load_con, add_con => add_con, shift_con => shift_con, multiplicand => multiplicand, multiplier => multiplier, reset => reset, clk => clk, count_out => count_out, adder_result => adder_result);

    testbench: process
    begin
        for i in 1 to 70 loop
            clk <= '1';
            wait for 10 ns;
            clk <= '0';
            wait for 10 ns;
        end loop;
        wait;
    end process;

end architecture;