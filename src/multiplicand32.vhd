library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity multiplicand32 is
    port
    (
        clk: in std_logic;
        load: in std_logic_vector(31 downto 0);
        current: out std_logic_vector(31 downto 0)
    );
end entity;

architecture rtl of multiplicand32 is
    signal address: std_logic_vector(31 downto 0) := "00000000000000000000000000000000"; -- default address in the program counter

    begin
	 current <= address;

    process(clk)
    begin
        if(rising_edge(clk)) then
            address <= load;
        end if;
    end process;
end architecture;
