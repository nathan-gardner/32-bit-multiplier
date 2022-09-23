library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier32 is
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
end entity;

architecture rtl of multiplier32 is

    -- components
    component productregister is
        port (
            clk   : in std_logic;
            reset_control : in std_logic;
            add_control : in std_logic;
            shiftright_control : in std_logic;
            load_control : in std_logic;
            hi, lo : in std_logic_vector(31 downto 0);
            add_hi : in std_logic_vector(31 downto 0);
            product : out std_logic_vector(63 downto 0);
            LSB : out std_logic
        );
    end component;

    component adder32 is
        port (
            in1, in2 : in std_logic_vector(31 downto 0);
            out1 : out std_logic_vector(31 downto 0);
			product : in std_logic_vector(63 downto 0)
        );
    end component;

    component controlunit is
        port(
            clk: in std_logic;
            shift_con: out std_logic;
            add_con: out std_logic;
            load_con: out std_logic;
            count_out: out integer 
        );
    end component;
	 
	 component multiplicand32 is
    port
    (
        clk: in std_logic;
        load: in std_logic_vector(31 downto 0);
        current: out std_logic_vector(31 downto 0)
    );
	end component;

    -- signals
    signal add_con_sig, load_con_sig, shift_con_sig, reset_con_sig: std_logic;
    signal product_lsb: std_logic;
    signal product_sig: std_logic_vector(63 downto 0) := "00000000000000000000000000000000" & multiplier;
    signal hi_product: std_logic_vector(31 downto 0) := (others => '0');
    signal hi_adder_result: std_logic_vector(31 downto 0);
	 signal multiplicand_sig: std_logic_vector(31 downto 0);

begin
    -- adder instantiation
    adder_inst: adder32 port map(
        in1 => product_sig(63 downto 32),
        in2 => multiplicand_sig,
        out1 => hi_adder_result,
		product => product_sig
    );

    -- product register instantiation
    product_reg_inst: productregister port map(
        clk => clk,
        reset_control => reset,
        add_control => add_con_sig,
        shiftright_control => shift_con_sig,
        load_control => load_con_sig,
        hi => "00000000000000000000000000000000", -- initilize high half of product register to '0's
        lo => multiplier,
        add_hi => hi_adder_result,
        product => product_sig,
        LSB => product_lsb
    );

    -- control unit instantiation
    control_unit_inst: controlunit port map(
        clk => clk,
        shift_con => shift_con_sig,
        add_con => add_con_sig,
        load_con => load_con_sig,
        count_out => count_out
    );
	 
	 multiplicand32_inst: multiplicand32 port map(
		clk => clk,
		load => multiplicand,
		current => multiplicand_sig
	 );


    hi_product <= product_sig(63 downto 32);
    product <= product_sig;
    reset_con_sig <= reset;

    load_con <= load_con_sig;
    add_con <= add_con_sig;
    shift_con <= shift_con_sig;
    adder_result <= hi_adder_result;
end architecture;