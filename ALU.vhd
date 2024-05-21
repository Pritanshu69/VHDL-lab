library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    Port (
        A : in  STD_LOGIC_VECTOR(3 downto 0);
        B : in  STD_LOGIC_VECTOR(3 downto 0);
        ALU_Sel : in  STD_LOGIC_VECTOR(2 downto 0);
        ALU_Result : out  STD_LOGIC_VECTOR(3 downto 0);
        CarryOut : out  STD_LOGIC
    );
end ALU;

architecture Behavioral of ALU is
begin
    process (A, B, ALU_Sel)
    begin
        case ALU_Sel is
            when "000" => -- Addition
                ALU_Result <= ('0' & A) + ('0' & B);
                CarryOut <= '0'; -- Assuming no overflow handling
            when "001" => -- Subtraction
                ALU_Result <= A - B;
                CarryOut <= '0'; -- Assuming no overflow handling
            when "010" => -- AND
                ALU_Result <= A and B;
                CarryOut <= '0';
            when "011" => -- OR
                ALU_Result <= A or B;
                CarryOut <= '0';
            when "100" => -- XOR
                ALU_Result <= A xor B;
                CarryOut <= '0';
            when "101" => -- NOT A
                ALU_Result <= not A;
                CarryOut <= '0';
            when others =>
                ALU_Result <= (others => '0');
                CarryOut <= '0';
        end case;
    end process;
end Behavioral;
