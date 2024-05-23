library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity T_FlipFlop is
    Port (
        T       : in  STD_LOGIC;  -- Toggle input
        Clk     : in  STD_LOGIC;  -- Clock input
        Q       : out STD_LOGIC   -- Output
    );
end T_FlipFlop;

-- Architecture declaration
architecture Behavioral of T_FlipFlop is
    signal Q_int : STD_LOGIC := '0';
begin
    process (Clk)
    begin
        if rising_edge(Clk) then
            if T = '1' then
                Q_int <= not Q_int;  -- Toggle
            end if;
        end if;
    end process;

    Q <= Q_int;
end Behavioral;
