library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity encoder_8_to_3 is
    Port (
        input : in STD_LOGIC_VECTOR(7 downto 0);
        output : out STD_LOGIC_VECTOR(2 downto 0)
    );
end encoder_8_to_3;

architecture Behavioral of encoder_8_to_3 is
begin
    process(input)
    begin
        case input is
            when "00000001" => output <= "000";
            when "00000010" => output <= "001";
            when "00000100" => output <= "010";
            when "00001000" => output <= "011";
            when "00010000" => output <= "100";
            when "00100000" => output <= "101";
            when "01000000" => output <= "110";
            when "10000000" => output <= "111";
            when others => output <= "XXX"; -- Error state
        end case;
    end process;
end Behavioral;
