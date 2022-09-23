library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity adder32 is
    port (
        in1, in2 : in std_logic_vector(31 downto 0);
        out1 : out std_logic_vector(31 downto 0);
        product : in std_logic_vector(63 downto 0)
    );
end entity;

architecture rtl of adder32 is
signal y_sig: std_logic_vector(31 downto 0) := "00000000000000000000000000000000"; -- value to initialize adder output
begin
    out1 <= y_sig;
    adder: process(in1, in2, product)
    begin
        if(product(0) = '1') then
            y_sig <= in1 + in2;
        else
            y_sig <= in1;
        end if;
    end process;
end architecture;