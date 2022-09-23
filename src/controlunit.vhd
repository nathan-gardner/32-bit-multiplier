library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlunit is
    port(
        clk: in std_logic;
        shift_con: out std_logic;
        add_con: out std_logic;
        load_con: out std_logic;
        count_out: out integer 
    );
end entity;

architecture rtl of controlunit is

    type typestate is (
        end_state,
        load_state,
        shift_state,
        add_state
    );

    signal curr_state: typestate;
    signal next_state: typestate := load_state;
    signal count: integer := 0;
begin

    -- transition logic
    process(clk)
    begin
        if(rising_edge(clk)) then
            curr_state <= next_state; -- update the state
            count <= count + 1; -- update the clk count
        end if;
    end process;

    -- next state logic
    process(curr_state)
    begin
        if(curr_state = add_state) then -- add state
            next_state <= shift_state;
        elsif(curr_state = shift_state) then -- shift state
            next_state <= add_state;
        elsif(curr_state = load_state) then
            next_state <= add_state;
        end if;
		  
		  -- after 32 repitions, enter end state
        if(count = 65) then -- this accounts for one clock cycle for load cycle, and then two per repition for add and shift
            next_state <= end_state; -- enter end trap state
        end if;
		  
    end process;

    -- output logic
    process(curr_state)
    begin
        if(curr_state = add_state) then -- add state
            load_con <= '0';
            shift_con <= '0';
            add_con <= '1';
        elsif(curr_state = shift_state) then -- shift state
            load_con <= '0';
            shift_con <= '1';
            add_con <= '0';
        elsif(curr_state = load_state) then -- load state
            load_con <= '1';
            shift_con <= '0';
            add_con <= '0';
        else -- end state  
            load_con <= '0';
            shift_con <= '0';
            add_con <= '0';
        end if;
    end process;

    count_out <= count;

end architecture;