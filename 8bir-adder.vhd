library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration
entity Adder8bit is
    Port (
        A       : in  STD_LOGIC_VECTOR (7 downto 0);  -- 8-bit input A
        B       : in  STD_LOGIC_VECTOR (7 downto 0);  -- 8-bit input B
        Sum     : out STD_LOGIC_VECTOR (7 downto 0);  -- 8-bit sum output
        CarryOut: out STD_LOGIC                       -- Carry-out output
    );
end Adder8bit;

-- Architecture declaration
architecture Behavioral of Adder8bit is
begin
    process (A, B)
        variable temp: STD_LOGIC_VECTOR (8 downto 0); -- 9-bit temporary variable to hold sum with carry
    begin
        -- Perform addition and store result in temp
        temp := ('0' & A) + ('0' & B);
        
        -- Assign sum and carry-out
        Sum <= temp(7 downto 0);      -- Lower 8 bits are assigned to Sum
        CarryOut <= temp(8);          -- 9th bit is assigned to CarryOut
    end process;
end Behavioral;
