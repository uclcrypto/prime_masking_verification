library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RedModMersenne is
    Generic ( bits : INTEGER := 7);
    Port ( a : in UNSIGNED (bits-1 downto 0);
           b : out UNSIGNED (bits-1 downto 0));
end RedModMersenne;

architecture Behavioral of RedModMersenne is

    constant p : UNSIGNED(bits-1 downto 0) := (OTHERS => '1');
    constant zero : UNSIGNED(bits-1 downto 0) := (OTHERS => '0');
    
begin

    b <= zero when (a = p) else a;

end Behavioral;