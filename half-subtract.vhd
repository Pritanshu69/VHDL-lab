library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity HalfSubtractor is
    Port (
        A      : in  STD_LOGIC;  -- Minuend input
        B      : in  STD_LOGIC;  -- Subtrahend input
        Diff   : out STD_LOGIC;  -- Difference output
        Borrow : out STD_LOGIC   -- Borrow output
    );
end HalfSubtractor;

-- Architecture declaration
architecture Behavioral of HalfSubtractor is
begin
    -- Difference is the XOR of inputs A and B
    Diff <= A xor B;
    
    -- Borrow is '1' when A is '0' and B is '1'
    Borrow <= not A and B;
end Behavioral;
