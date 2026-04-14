library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SQ_2SHARE_SILVERWRAP is
    Generic (bits : INTEGER := 2);
    Port ( clk : in STD_LOGIC;
           a0 : in UNSIGNED (bits-1 downto 0);
           a1 : in UNSIGNED (bits-1 downto 0);
           r0 : in UNSIGNED (bits-1 downto 0);
           r1 : in UNSIGNED (bits-1 downto 0);
           b0 : out UNSIGNED (bits-1 downto 0);
           b1 : out UNSIGNED (bits-1 downto 0));
end SQ_2SHARE_SILVERWRAP;

architecture Behavioral of SQ_2SHARE_SILVERWRAP is

    component RedModMersenne is
        Generic ( bits : INTEGER := 7);
        Port ( a : in UNSIGNED (bits-1 downto 0);
               b : out UNSIGNED (bits-1 downto 0));
    end component;
    
    component SQ_2SHARE is
        Generic (bits : INTEGER := 7);
        Port ( clk : in STD_LOGIC;
               a0 : in UNSIGNED (bits-1 downto 0);
               a1 : in UNSIGNED (bits-1 downto 0);
               r0 : in UNSIGNED (bits-1 downto 0);
               r1 : in UNSIGNED (bits-1 downto 0);
               b0 : out UNSIGNED (bits-1 downto 0);
               b1 : out UNSIGNED (bits-1 downto 0));
    end component;
    
    signal a0_r, a1_r, a0_mod_r, a1_mod_r, a0_sel_r, a1_sel_r, a0_sel_rr, a1_sel_rr, r0_r, r1_r, r0_rr, r1_rr : UNSIGNED (bits-1 downto 0);
    signal r0_p, r1_p, r0_p_r, r1_p_r : STD_LOGIC;
    constant p : UNSIGNED(bits-1 downto 0) := (OTHERS => '1');
    constant zero : UNSIGNED(bits-1 downto 0) := (OTHERS => '0');
    
begin

    RED1: RedModMersenne Generic Map (bits) Port Map (a0_r, a0_mod_r);
    RED2: RedModMersenne Generic Map (bits) Port Map (a1_r, a1_mod_r);
    
    r0_p <= '1' when (r0 = zero) else '0';
    r1_p <= '1' when (r1 = zero) else '0';
    a0_sel_r <= p when ((r0_p_r OR r1_p_r) = '1') else a0_mod_r;
    a1_sel_r <= p when ((r0_p_r OR r1_p_r) = '1') else a1_mod_r;
    
    SQ_instance: SQ_2SHARE Generic Map (bits) Port Map (clk, a0_sel_rr, a1_sel_rr, r0_rr, r1_rr, b0, b1);
    
    REG : process(clk)
    begin
        if (rising_edge(clk)) then
            a0_r <= a0;
            a1_r <= a1;
            r0_p_r <= r0_p;
            r1_p_r <= r1_p;
            r0_r <= r0;
            r1_r <= r1;
            r0_rr <= r0_r;
            r1_rr <= r1_r;
            a0_sel_rr <= a0_sel_r;
            a1_sel_rr <= a1_sel_r;
        end if;
    end process;
    
end Behavioral;
