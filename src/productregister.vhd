library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity productregister is
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
end entity;

architecture rtl of productregister is
    signal product_reg : std_logic_vector(63 downto 0);
begin
    -- update the product register process
    process(clk) is
    begin
        if(rising_edge(clk)) then
            -- load
            if(load_control = '1') then -- load the product register with hi and lo inputs
                product_reg(63 downto 32) <= hi;
                product_reg(31 downto 0) <= lo;
            end if;
            -- add
            if(add_control = '1') then
                product_reg(63 downto 32) <= add_hi; -- assign the output of the adder to the high bits of the product register (only add when the LSB of the product register is '1')
            end if;
            -- shift right
            if(shiftright_control = '1') then
                product_reg(62 downto 0) <= product_reg(63 downto 1);
                product_reg(63) <= '0'; -- shift in bit '0'
            end if;
            -- reset
            if(reset_control = '1') then
                product_reg <= (others => '0');
            end if;
        end if;
    end process;

    -- assign outputs with internal signals
    product <= product_reg;
    LSB <= product_reg(0);

end architecture;