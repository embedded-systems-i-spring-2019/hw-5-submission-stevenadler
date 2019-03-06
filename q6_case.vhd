library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use IEEE.NUMERIC_STD.ALL;

entity q6 is
    port( 
        input : in std_logic_vector (7 downto 0);
        sel : in std_logic_vector (2 downto 0);
        output : out std_logic
    );

end q6;

architecture Behavioral of q6 is

begin
    mux: process (sel, input)
    begin
        case (sel) is
            when "000" => output <= input(0);
            when "001" => output <= input(1);
            when "010" => output <= input(2);
            when "011" => output <= input(3);
            when "100" => output <= input(4);
            when "101" => output <= input(5);
            when "110" => output <= input(6);
            when "111" => output <= input(7);
            when others => output <= '0';
        end case;
    end process mux;

end Behavioral;
