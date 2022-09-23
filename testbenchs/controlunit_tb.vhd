library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlunit_tb is
end entity;

architecture testbench of controlunit_tb is
    -- component
    component controlunit is
        port(
            clk: in std_logic;
            shift_con: out std_logic;
            add_con: out std_logic;
            load_con: out std_logic;
            count_out: out integer 
        );
    end component;
    -- signals
    signal clk: std_logic := '0';
    signal shift_con: std_logic;
    signal add_con: std_logic;
    signal load_con: std_logic;
    signal count_out: integer;
begin
    UUT: controlunit port map(
        clk => clk,
        shift_con => shift_con,
        add_con => add_con,
        load_con => load_con,
        count_out => count_out
    );

    testbench: process
    begin
        
        for i in 1 to 32 loop
            clk <= '1';
            wait for 10 ns;
            clk <= '0';
            wait for 10 ns;
        end loop;

        wait; -- wait forever
    end process;
    
end architecture;