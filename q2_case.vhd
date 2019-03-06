library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity q2_case is

    port (
        A_1   : in std_logic;
        A_2   : in std_logic;
        B_1   : in std_logic;
        B_2   : in std_logic;
        D_1   : in std_logic;
        E_out : out std_logic
    );

end q2_case;

architecture Behavioral of q2_case is
signal bundle : std_logic_vector(4 downto 0) := (others => '0');

begin

process begin
    bundle <= A_1 & A_2 & B_1 & B_2 & D_1;
    case bundle is
        when "11---" => E_out <= '1';
        When "--1--" => E_out <= '1';
        when "---1-" => E_out <= '1';
        when "---10" => E_out <= '1';
        when others  => E_out <= '0';
    end case;
end process;

end Behavioral;
