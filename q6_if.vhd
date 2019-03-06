library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity q6_if is
    port( 
        input : in std_logic_vector (7 downto 0);
        sel : in std_logic_vector (2 downto 0);
        output : out std_logic
    );

end q6_if;

architecture Behavioral of q6_if is

begin
    mux: process (sel, input)
    begin
        if    sel ="000" then output <= input(0);
        elsif sel ="001" then output <= input(1);
        elsif sel ="010" then output <= input(2);
        elsif sel ="011" then output <= input(3);
        elsif sel ="100" then output <= input(4);
        elsif sel ="101" then output <= input(5);
        elsif sel ="110" then output <= input(6);
        elsif sel ="111" then output <= input(7);
        else                  output <= '0';
        end if;
    end process mux;

end Behavioral;
