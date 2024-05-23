library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity SR_FlipFlop is
    Port (
        S    : in  STD_LOGIC;  -- Set input
        R    : in  STD_LOGIC;  -- Reset input
        Clk  : in  STD_LOGIC;  -- Clock input
        Q    : out STD_LOGIC   -- Output
    );
end SR_FlipFlop;

-- Architecture declaration
architecture Behavioral of SR_FlipFlop is
begin
    process (Clk)
    begin
        if rising_edge(Clk) then
            if S = '1' and R = '0' then
                Q <= '1';  -- Set
            elsif S = '0' and R = '1' then
                Q <= '0';  -- Reset
            elsif S = '1' and R = '1' then
                Q <= 'X';  -- Invalid state (optional handling)
            end if;
        end if;
    end process;
end Behavioral;
