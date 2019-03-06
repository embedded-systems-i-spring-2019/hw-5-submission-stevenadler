library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity q7_if is
    port (
        clock   : in std_logic;
        input          : in std_logic_vector(2 downto 0);
        output         : out std_logic_vector(7 downto 0)
    );
end q7_if;

architecture Behavioral of q7_if is

begin

process(clock)
begin
    if falling_edge(clock) then
        if    input="000" then output <= "00000001";
        elsif input="001" then output <= "00000010";
        elsif input="010" then output <= "00000100";
        elsif input="011" then output <= "00001000";
        elsif input="100" then output <= "00010000";
        elsif input="101" then output <= "00100000";
        elsif input="110" then output <= "01000000";
        elsif input="111" then output <= "10000000";
        else                   output <= "00000000";
        end if;
    end if;
end process;

end Behavioral;