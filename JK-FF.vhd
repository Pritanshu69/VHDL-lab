library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity JK_FlipFlop is
    Port (
        J       : in  STD_LOGIC;  -- J input
        K       : in  STD_LOGIC;  -- K input
        Clk     : in  STD_LOGIC;  -- Clock input
        Q       : out STD_LOGIC;  -- Output
        Qn      : out STD_LOGIC   -- Complement output
    );
end JK_FlipFlop;

-- Architecture declaration
architecture Behavioral of JK_FlipFlop is
    signal Q_int : STD_LOGIC := '0';
begin
    process (Clk)
    begin
        if rising_edge(Clk) then
            if (J = '0' and K = '0') then
                Q_int <= Q_int;  -- No change
            elsif (J = '0' and K = '1') then
                Q_int <= '0';    -- Reset
            elsif (J = '1' and K = '0') then
                Q_int <= '1';    -- Set
            else
                Q_int <= not Q_int;  -- Toggle
            end if;
        end if;
    end process;

    Q <= Q_int;
    Qn <= not Q_int;
end Behavioral;
