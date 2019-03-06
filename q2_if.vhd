library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity q2_if is

    port (
        A_1   : in std_logic;
        A_2   : in std_logic;
        B_1   : in std_logic;
        B_2   : in std_logic;
        D_1   : in std_logic;
        E_out : out std_logic
    );

end q2_if;

architecture Behavioral of q2_if is

begin

process begin

    if (A_1 and A_2)='1' then
        E_out <= '1';
    elsif (B_1 or B_2)='1' then
        E_out <= '1';
    elsif (B_2 and not D_1)='1' then
        E_out <= '1';    
    else
        E_out <= '0';
    end if;
end process;

end Behavioral;
