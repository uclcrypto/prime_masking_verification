library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SQ_3SHARE_SILVERWRAP is
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
end SQ_3SHARE_SILVERWRAP;

architecture Behavioral of SQ_3SHARE_SILVERWRAP is

    component RedModMersenne is
        Generic ( bits : INTEGER := 7);
        Port ( a : in UNSIGNED (bits-1 downto 0);
               b : out UNSIGNED (bits-1 downto 0));
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
    
    signal a0_r, a1_r, a2_r, a0_mod_r, a1_mod_r, a2_mod_r, a0_sel_r, a1_sel_r, a2_sel_r, a0_sel_rr, a1_sel_rr, a2_sel_rr, r0_r, r1_r, r2_r, r3_r, r4_r, r0_rr, r1_rr, r2_rr, r3_rr, r4_rr : UNSIGNED (bits-1 downto 0);
    signal r0_p, r1_p, r2_p, r3_p, r4_p, r0_p_r, r1_p_r, r2_p_r, r3_p_r, r4_p_r : STD_LOGIC;
    constant p : UNSIGNED(bits-1 downto 0) := (OTHERS => '1');
    constant zero : UNSIGNED(bits-1 downto 0) := (OTHERS => '0');
    
begin

    RED1: RedModMersenne Generic Map (bits) Port Map (a0_r, a0_mod_r);
    RED2: RedModMersenne Generic Map (bits) Port Map (a1_r, a1_mod_r);
    RED3: RedModMersenne Generic Map (bits) Port Map (a2_r, a2_mod_r);
    
    r0_p <= '1' when (r0 = zero) else '0';
    r1_p <= '1' when (r1 = zero) else '0';
    r2_p <= '1' when (r2 = zero) else '0';
    r3_p <= '1' when (r3 = zero) else '0';
    r4_p <= '1' when (r4 = zero) else '0';
    a0_sel_r <= p when ((r0_p_r OR r1_p_r OR r2_p_r OR r3_p_r OR r4_p_r) = '1') else a0_mod_r;
    a1_sel_r <= p when ((r0_p_r OR r1_p_r OR r2_p_r OR r3_p_r OR r4_p_r) = '1') else a1_mod_r;
    a2_sel_r <= p when ((r0_p_r OR r1_p_r OR r2_p_r OR r3_p_r OR r4_p_r) = '1') else a2_mod_r;
    
    SQ_instance: SQ_3SHARE Generic Map (bits) Port Map (clk, a0_sel_rr, a1_sel_rr, a2_sel_rr, r0_rr, r1_rr, r2_rr, r3_rr, r4_rr, b0, b1, b2);
    
    REG : process(clk)
    begin
        if (rising_edge(clk)) then
            a0_r <= a0;
            a1_r <= a1;
            a2_r <= a2;
            r0_p_r <= r0_p;
            r1_p_r <= r1_p;
            r2_p_r <= r2_p;
            r3_p_r <= r3_p;
            r4_p_r <= r4_p;
            r0_r <= r0;
            r1_r <= r1;
            r2_r <= r2;
            r3_r <= r3;
            r4_r <= r4;
            r0_rr <= r0_r;
            r1_rr <= r1_r;
            r2_rr <= r2_r;
            r3_rr <= r3_r;
            r4_rr <= r4_r;
            a0_sel_rr <= a0_sel_r;
            a1_sel_rr <= a1_sel_r;
            a2_sel_rr <= a2_sel_r;
        end if;
    end process;
    
end Behavioral;
