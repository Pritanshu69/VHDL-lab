library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity D_FlipFlop is
    Port (
        D       : in  STD_LOGIC;  -- Data input
        Clk     : in  STD_LOGIC;  -- Clock input
        Q       : out STD_LOGIC   -- Output
    );
end D_FlipFlop;

-- Architecture declaration
architecture Behavioral of D_FlipFlop is
begin
    process (Clk)
    begin
        if rising_edge(Clk) then
            Q <= D;
        end if;
    end process;
end Behavioral;
