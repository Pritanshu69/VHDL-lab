library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity MUX4to1 is
    Port (
        I0 : in STD_LOGIC;  -- Input 0
        I1 : in STD_LOGIC;  -- Input 1
        I2 : in STD_LOGIC;  -- Input 2
        I3 : in STD_LOGIC;  -- Input 3
        S  : in STD_LOGIC_VECTOR (1 downto 0);  -- Select lines
        Y  : out STD_LOGIC  -- Output
    );
end MUX4to1;

-- Architecture declaration
architecture Behavioral of MUX4to1 is
begin
    -- Process that describes the multiplexer behavior
    process (I0, I1, I2, I3, S)
    begin
        case S is
            when "00" =>
                Y <= I0;
            when "01" =>
                Y <= I1;
            when "10" =>
                Y <= I2;
            when "11" =>
                Y <= I3;
            when others =>
                Y <= 'X';  -- Undefined state
        end case;
    end process;
end Behavioral;
