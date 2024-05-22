library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity Decoder3to8 is
    Port (
        A    : in  STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input
        Y    : out STD_LOGIC_VECTOR (7 downto 0)   -- 8-bit output
    );
end Decoder3to8;

-- Architecture declaration
architecture Behavioral of Decoder3to8 is
begin
    process (A)
    begin
        -- Initialize all outputs to '0'
        Y <= (others => '0');
        -- Determine which output line to set to '1'
        case A is
            when "000" => Y(0) <= '1';
            when "001" => Y(1) <= '1';
            when "010" => Y(2) <= '1';
            when "011" => Y(3) <= '1';
            when "100" => Y(4) <= '1';
            when "101" => Y(5) <= '1';
            when "110" => Y(6) <= '1';
            when "111" => Y(7) <= '1';
            when others => Y <= (others => '0'); -- Shouldn't occur
        end case;
    end process;
end Behavioral;
