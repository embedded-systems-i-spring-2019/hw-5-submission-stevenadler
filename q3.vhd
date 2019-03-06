library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity q3 is

    port (
        A_1   : in std_logic;
        A_2   : in std_logic;
        B_1   : in std_logic;
        B_2   : in std_logic;
        D_1   : in std_logic;
        E_out : out std_logic
    );

end q3;

architecture Behavioral of q3 is

begin

    E_out <= (A_1 and A_2) or (B_1 or B_2) or (not D_1 and B_2);

end Behavioral;
