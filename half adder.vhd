library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity HalfAdder is
    Port (
        A    : in  STD_LOGIC;  -- Input A
        B    : in  STD_LOGIC;  -- Input B
        Sum  : out STD_LOGIC;  -- Sum output
        Carry: out STD_LOGIC   -- Carry output
    );
end HalfAdder;

-- Architecture declaration
architecture Behavioral of HalfAdder is
begin
    -- Sum is the XOR of inputs A and B
    Sum <= A xor B;
    
    -- Carry is the AND of inputs A and B
    Carry <= A and B;
end Behavioral;
