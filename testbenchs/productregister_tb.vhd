library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity productregister_tb is
end entity;

architecture testbench of productregister_tb is
    -- components
    component productregister is
        port (
            clk   : in std_logic; -- clk for the system
            reset_control : in std_logic; -- reset control for the system
            add_control : in std_logic; -- control for accepting add result from the adder
            shiftright_control : in std_logic; -- shift right control for the multiplier
            load_control : in std_logic; -- control for loading product register with hi and lo inputs
            hi, lo : in std_logic_vector(31 downto 0); -- hi and lo inputs of the product register
            add_hi : in std_logic_vector(31 downto 0); -- input from the 32 bit adder
            product : out std_logic_vector(63 downto 0); -- result and output of the product register
            LSB : out std_logic -- least significant bit of the product register
        );
    end component;

    -- signals
    signal clk : std_logic := '0';
    signal reset_control, add_control, shiftright_control, load_control : std_logic := '0';
    signal hi : std_logic_vector(31 downto 0) := (others => '0');
    signal lo : std_logic_vector(31 downto 0) := "00000000000000000000000000000100"; -- initialize lower half to the multiplier
    signal add_hi : std_logic_vector(31 downto 0);
    signal product : std_logic_vector(63 downto 0);
    signal LSB : std_logic;    

    -- signals for testing
    signal multipicand_tb : std_logic_vector(31 downto 0) := "00000000000000000000000000000100";
begin
    UUT: productregister port map (
        clk => clk,
        reset_control => reset_control,
        add_control => add_control,
        shiftright_control => shiftright_control,
        load_control => load_control,
        hi => hi,
        lo => lo,
        add_hi => add_hi,
        product => product,
        LSB => LSB
    );

    testbench: process
    begin
        
        -- initialixze value in the product register to [hi & lo]
        -- control signal generation
        load_control <= '1';
        add_control <= '0';
        shiftright_control <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
        clk <= '0';

        for i in 1 to 32 loop
            -- control signal generation
            load_control <= '0';
            add_control <= '1';
            shiftright_control <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
            clk <= '0';

            -- control signal generation
            load_control <= '0';
            add_control <= '0';
            shiftright_control <= '1';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
            clk <= '0';
        end loop;

        wait;
    end process;

    -- simulate adder component inside the testbench
    process(product, multipicand_tb, add_control)
    begin
        if (product(0) = '1') then
            add_hi <= product(63 downto 32) + multipicand_tb; -- add if lsb is '1'
        else
            add_hi <= product(63 downto 32); -- don't add if lsb is '0'
        end if;
    end process;
end architecture;