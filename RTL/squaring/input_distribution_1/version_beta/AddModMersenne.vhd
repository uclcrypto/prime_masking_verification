library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AddModMersenne is
    Generic ( bits : INTEGER := 7);
    Port ( a : in UNSIGNED (bits-1 downto 0);
           b : in UNSIGNED (bits-1 downto 0);
           c : out UNSIGNED (bits-1 downto 0));
end AddModMersenne;

architecture Behavioral of AddModMersenne is

    signal ab : UNSIGNED(bits downto 0);
    signal c_p : UNSIGNED(bits-1 downto 0);

begin

    ab <= ('0' & a) + ('0' & b);
    c_p <= ab(bits-1 downto 0) + ((bits-2 downto 0 => '0') & ab(bits));
    c <= (OTHERS => '0') when (c_p = (bits-1 downto 0 => '1')) else c_p;

end Behavioral;