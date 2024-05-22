library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity FullAdder is
    Port (
        A      : in  STD_LOGIC;  -- Input A
        B      : in  STD_LOGIC;  -- Input B
        Cin    : in  STD_LOGIC;  -- Carry-in
        Sum    : out STD_LOGIC;  -- Sum output
        Cout   : out STD_LOGIC   -- Carry-out output
    );
end FullAdder;

-- Architecture declaration
architecture Behavioral of FullAdder is
begin
    -- Sum is calculated as A XOR B XOR Cin
    Sum <= A xor B xor Cin;

    -- Carry-out is calculated as (A AND B) OR (Cin AND (A XOR B))
    Cout <= (A and B) or (Cin and (A xor B));
end Behavioral;
