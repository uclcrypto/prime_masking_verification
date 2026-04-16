library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SQ_3SHARE_PROLEADWRAP is
    Generic (bits : INTEGER := 2);
    Port ( clk : in STD_LOGIC;
           a0 : in UNSIGNED (bits-1 downto 0);
           a1 : in UNSIGNED (bits-1 downto 0);
           a2 : in UNSIGNED (bits-1 downto 0);
           r0 : in UNSIGNED (bits-1 downto 0);
           r1 : in UNSIGNED (bits-1 downto 0);
           r2 : in UNSIGNED (bits-1 downto 0);
           r3 : in UNSIGNED (bits-1 downto 0);
           r4 : in UNSIGNED (bits-1 downto 0);
           b0 : out UNSIGNED (bits-1 downto 0);
           b1 : out UNSIGNED (bits-1 downto 0);
           b2 : out UNSIGNED (bits-1 downto 0));
end SQ_3SHARE_PROLEADWRAP;

architecture Behavioral of SQ_3SHARE_PROLEADWRAP is

    component AddModMersenne is
        Generic ( bits : INTEGER := 7);
        Port ( a : in UNSIGNED (bits-1 downto 0);
               b : in UNSIGNED (bits-1 downto 0);
               c : out UNSIGNED (bits-1 downto 0));
    end component;
    
    component SubModMersenne is
        Generic ( bits : INTEGER := 7);
        Port ( a : in UNSIGNED (bits-1 downto 0);
               b : in UNSIGNED (bits-1 downto 0);
               c : out UNSIGNED (bits-1 downto 0));
    end component;

    component SQ_3SHARE is
        Generic (bits : INTEGER := 7);
        Port ( clk : in STD_LOGIC;
               a0 : in UNSIGNED (bits-1 downto 0);
               a1 : in UNSIGNED (bits-1 downto 0);
               a2 : in UNSIGNED (bits-1 downto 0);
               r0 : in UNSIGNED (bits-1 downto 0);
               r1 : in UNSIGNED (bits-1 downto 0);
               r2 : in UNSIGNED (bits-1 downto 0);
               r3 : in UNSIGNED (bits-1 downto 0);
               r4 : in UNSIGNED (bits-1 downto 0);
               b0 : out UNSIGNED (bits-1 downto 0);
               b1 : out UNSIGNED (bits-1 downto 0);
               b2 : out UNSIGNED (bits-1 downto 0));
    end component;
    
    signal a0p1, a1p1, a2p1, r0p1, r1p1, r2p1, r3p1, r4p1, b0p1, b1p1, b2p1 : UNSIGNED (bits-1 downto 0);
    constant one : UNSIGNED(bits-1 downto 0) := ((bits-1 downto 1 => '0') & '1');
    
begin

    Add1 : AddModMersenne Generic Map (bits) Port Map (a0, one, a0p1);
    Add2 : AddModMersenne Generic Map (bits) Port Map (a1, one, a1p1);
    Add3 : AddModMersenne Generic Map (bits) Port Map (a2, one, a2p1);
    Add4 : AddModMersenne Generic Map (bits) Port Map (r0, one, r0p1);
    Add5 : AddModMersenne Generic Map (bits) Port Map (r1, one, r1p1);
    Add6 : AddModMersenne Generic Map (bits) Port Map (r2, one, r2p1);
    Add7 : AddModMersenne Generic Map (bits) Port Map (r3, one, r3p1);
    Add8 : AddModMersenne Generic Map (bits) Port Map (r4, one, r4p1);
    Sub1 : SubModMersenne Generic Map (bits) Port Map (b0p1, one, b0);
    Sub2 : SubModMersenne Generic Map (bits) Port Map (b1p1, one, b1);
    Sub3 : SubModMersenne Generic Map (bits) Port Map (b2p1, one, b2);

    SQ_instance: SQ_3SHARE Generic Map (bits) Port Map (clk, a0p1, a1p1, a2p1, r0p1, r1p1, r2p1, r3p1, r4p1, b0p1, b1p1, b2p1);
    
end Behavioral;
