library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity q7_case is
    port (
        clock   : in std_logic;
        input          : in std_logic_vector(2 downto 0);
        output         : out std_logic_vector(7 downto 0)
    );
end q7_case;

architecture Behavioral of q7_case is

begin

process(clock)
begin
    if falling_edge(clock) then
        case input is
            when "000" => output <= "00000001";
            when "001" => output <= "00000010";
            when "010" => output <= "00000100";
            when "011" => output <= "00001000";
            when "100" => output <= "00010000";
            when "101" => output <= "00100000";
            when "110" => output <= "01000000";
            when "111" => output <= "10000000";
            when others => output <= "00000000";
         end case;
    end if;
end process;

end Behavioral;