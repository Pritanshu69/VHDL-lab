library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity FullSubtractor is
    Port (
        A       : in  STD_LOGIC;  -- Minuend
        B       : in  STD_LOGIC;  -- Subtrahend
        Bin     : in  STD_LOGIC;  -- Borrow-in
        Diff    : out STD_LOGIC;  -- Difference
        Bout    : out STD_LOGIC   -- Borrow-out
    );
end FullSubtractor;

-- Architecture declaration
architecture Behavioral of FullSubtractor is
begin
    -- Difference is calculated as A XOR B XOR Bin
    Diff <= A xor B xor Bin;

    -- Borrow-out is calculated as (not A and B) or ((A xor B) and Bin)
    Bout <= (not A and B) or ((A xor B) and Bin);
end Behavioral;
