library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity parallel_adder is
    Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);
        B : in STD_LOGIC_VECTOR(7 downto 0);
        Cin : in STD_LOGIC;
        Sum : out STD_LOGIC_VECTOR(7 downto 0);
        Cout : out STD_LOGIC
    );
end parallel_adder;

architecture Behavioral of parallel_adder is
    signal C : STD_LOGIC_VECTOR(8 downto 0);
begin
    C(0) <= Cin;

    -- Instantiate the full adders
    FA0: entity work.full_adder port map (
        A => A(0),
        B => B(0),
        Cin => C(0),
        Sum => Sum(0),
        Cout => C(1)
    );

    FA1: entity work.full_adder port map (
        A => A(1),
        B => B(1),
        Cin => C(1),
        Sum => Sum(1),
        Cout => C(2)
    );

    FA2: entity work.full_adder port map (
        A => A(2),
        B => B(2),
        Cin => C(2),
        Sum => Sum(2),
        Cout => C(3)
    );

    FA3: entity work.full_adder port map (
        A => A(3),
        B => B(3),
        Cin => C(3),
        Sum => Sum(3),
        Cout => C(4)
    );

    FA4: entity work.full_adder port map (
        A => A(4),
        B => B(4),
        Cin => C(4),
        Sum => Sum(4),
        Cout => C(5)
    );

    FA5: entity work.full_adder port map (
        A => A(5),
        B => B(5),
        Cin => C(5),
        Sum => Sum(5),
        Cout => C(6)
    );

    FA6: entity work.full_adder port map (
        A => A(6),
        B => B(6),
        Cin => C(6),
        Sum => Sum(6),
        Cout => C(7)
    );

    FA7: entity work.full_adder port map (
        A => A(7),
        B => B(7),
        Cin => C(7),
        Sum => Sum(7),
        Cout => C(8)
    );

    -- The final carry out
    Cout <= C(8);
end Behavioral;
