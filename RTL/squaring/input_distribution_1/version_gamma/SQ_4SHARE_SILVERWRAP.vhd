library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SQ_4SHARE_SILVERWRAP is
    Generic (bits : INTEGER := 2);
    Port ( clk : in STD_LOGIC;
           a0 : in UNSIGNED (bits-1 downto 0);
           a1 : in UNSIGNED (bits-1 downto 0);
           a2 : in UNSIGNED (bits-1 downto 0);
           a3 : in UNSIGNED (bits-1 downto 0);
           r0 : in UNSIGNED (bits-1 downto 0);
           r1 : in UNSIGNED (bits-1 downto 0);
           r2 : in UNSIGNED (bits-1 downto 0);
           r3 : in UNSIGNED (bits-1 downto 0);
           r4 : in UNSIGNED (bits-1 downto 0);
           r5 : in UNSIGNED (bits-1 downto 0);
           r6 : in UNSIGNED (bits-1 downto 0);
           r7 : in UNSIGNED (bits-1 downto 0);
           r8 : in UNSIGNED (bits-1 downto 0);
           r9 : in UNSIGNED (bits-1 downto 0);
           r10 : in UNSIGNED (bits-1 downto 0);
           r11 : in UNSIGNED (bits-1 downto 0);
           b0 : out UNSIGNED (bits-1 downto 0);
           b1 : out UNSIGNED (bits-1 downto 0);
           b2 : out UNSIGNED (bits-1 downto 0);
           b3 : out UNSIGNED (bits-1 downto 0));
end SQ_4SHARE_SILVERWRAP;

architecture Behavioral of SQ_4SHARE_SILVERWRAP is

    component RedModMersenne is
        Generic ( bits : INTEGER := 7);
        Port ( a : in UNSIGNED (bits-1 downto 0);
               b : out UNSIGNED (bits-1 downto 0));
    end component;

    component SQ_4SHARE is
        Generic (bits : INTEGER := 7);
        Port ( clk : in STD_LOGIC;
               a0 : in UNSIGNED (bits-1 downto 0);
               a1 : in UNSIGNED (bits-1 downto 0);
               a2 : in UNSIGNED (bits-1 downto 0);
               a3 : in UNSIGNED (bits-1 downto 0);
               r0 : in UNSIGNED (bits-1 downto 0);
               r1 : in UNSIGNED (bits-1 downto 0);
               r2 : in UNSIGNED (bits-1 downto 0);
               r3 : in UNSIGNED (bits-1 downto 0);
               r4 : in UNSIGNED (bits-1 downto 0);
               r5 : in UNSIGNED (bits-1 downto 0);
               r6 : in UNSIGNED (bits-1 downto 0);
               r7 : in UNSIGNED (bits-1 downto 0);
               r8 : in UNSIGNED (bits-1 downto 0);
               r9 : in UNSIGNED (bits-1 downto 0);
               r10 : in UNSIGNED (bits-1 downto 0);
               r11 : in UNSIGNED (bits-1 downto 0);
               b0 : out UNSIGNED (bits-1 downto 0);
               b1 : out UNSIGNED (bits-1 downto 0);
               b2 : out UNSIGNED (bits-1 downto 0);
               b3 : out UNSIGNED (bits-1 downto 0));
    end component;
    
    signal a0_r, a1_r, a2_r, a3_r, a0_mod_r, a1_mod_r, a2_mod_r, a3_mod_r, a0_sel_r, a1_sel_r, a2_sel_r, a3_sel_r, a0_sel_rr, a1_sel_rr, a2_sel_rr, a3_sel_rr, r0_r, r1_r, r2_r, r3_r, r4_r, r5_r, r6_r, r7_r, r8_r, r9_r, r10_r, r11_r, r0_rr, r1_rr, r2_rr, r3_rr, r4_rr, r5_rr, r6_rr, r7_rr, r8_rr, r9_rr, r10_rr, r11_rr : UNSIGNED (bits-1 downto 0);
    signal r0_p, r1_p, r2_p, r3_p, r4_p, r5_p, r6_p, r7_p, r8_p, r9_p, r10_p, r11_p, r0_p_r, r1_p_r, r2_p_r, r3_p_r, r4_p_r, r5_p_r, r6_p_r, r7_p_r, r8_p_r, r9_p_r, r10_p_r, r11_p_r : STD_LOGIC;
    constant p : UNSIGNED(bits-1 downto 0) := (OTHERS => '1');
    constant zero : UNSIGNED(bits-1 downto 0) := (OTHERS => '0');
    
begin

    RED1: RedModMersenne Generic Map (bits) Port Map (a0_r, a0_mod_r);
    RED2: RedModMersenne Generic Map (bits) Port Map (a1_r, a1_mod_r);
    RED3: RedModMersenne Generic Map (bits) Port Map (a2_r, a2_mod_r);
    RED4: RedModMersenne Generic Map (bits) Port Map (a3_r, a3_mod_r);
    
    r0_p <= '1' when (r0 = zero) else '0';
    r1_p <= '1' when (r1 = zero) else '0';
    r2_p <= '1' when (r2 = zero) else '0';
    r3_p <= '1' when (r3 = zero) else '0';
    r4_p <= '1' when (r4 = zero) else '0';
    r5_p <= '1' when (r5 = zero) else '0';
    r6_p <= '1' when (r6 = zero) else '0';
    r7_p <= '1' when (r7 = zero) else '0';
    r8_p <= '1' when (r8 = zero) else '0';
    r9_p <= '1' when (r9 = zero) else '0';
    r10_p <= '1' when (r10 = zero) else '0';
    r11_p <= '1' when (r11 = zero) else '0';
    a0_sel_r <= p when ((r0_p_r OR r1_p_r OR r2_p_r OR r3_p_r OR r4_p_r OR r5_p_r OR r6_p_r OR r7_p_r OR r8_p_r OR r9_p_r OR r10_p_r OR r11_p_r) = '1') else a0_mod_r;
    a1_sel_r <= p when ((r0_p_r OR r1_p_r OR r2_p_r OR r3_p_r OR r4_p_r OR r5_p_r OR r6_p_r OR r7_p_r OR r8_p_r OR r9_p_r OR r10_p_r OR r11_p_r) = '1') else a1_mod_r;
    a2_sel_r <= p when ((r0_p_r OR r1_p_r OR r2_p_r OR r3_p_r OR r4_p_r OR r5_p_r OR r6_p_r OR r7_p_r OR r8_p_r OR r9_p_r OR r10_p_r OR r11_p_r) = '1') else a2_mod_r;
    a3_sel_r <= p when ((r0_p_r OR r1_p_r OR r2_p_r OR r3_p_r OR r4_p_r OR r5_p_r OR r6_p_r OR r7_p_r OR r8_p_r OR r9_p_r OR r10_p_r OR r11_p_r) = '1') else a3_mod_r;
    
    SQ_instance: SQ_4SHARE Generic Map (bits) Port Map (clk, a0_sel_rr, a1_sel_rr, a2_sel_rr, a3_sel_rr, r0_rr, r1_rr, r2_rr, r3_rr, r4_rr, r5_rr, r6_rr, r7_rr, r8_rr, r9_rr, r10_rr, r11_rr, b0, b1, b2, b3);
    
    REG : process(clk)
    begin
        if (rising_edge(clk)) then
            a0_r <= a0;
            a1_r <= a1;
            a2_r <= a2;
            a3_r <= a3;
            r0_p_r <= r0_p;
            r1_p_r <= r1_p;
            r2_p_r <= r2_p;
            r3_p_r <= r3_p;
            r4_p_r <= r4_p;
            r5_p_r <= r5_p;
            r6_p_r <= r6_p;
            r7_p_r <= r7_p;
            r8_p_r <= r8_p;
            r9_p_r <= r9_p;
            r10_p_r <= r10_p;
            r11_p_r <= r11_p;
            r0_r <= r0;
            r1_r <= r1;
            r2_r <= r2;
            r3_r <= r3;
            r4_r <= r4;
            r5_r <= r5;
            r6_r <= r6;
            r7_r <= r7;
            r8_r <= r8;
            r9_r <= r9;
            r10_r <= r10;
            r11_r <= r11;
            r0_rr <= r0_r;
            r1_rr <= r1_r;
            r2_rr <= r2_r;
            r3_rr <= r3_r;
            r4_rr <= r4_r;
            r5_rr <= r5_r;
            r6_rr <= r6_r;
            r7_rr <= r7_r;
            r8_rr <= r8_r;
            r9_rr <= r9_r;
            r10_rr <= r10_r;
            r11_rr <= r11_r;
            a0_sel_rr <= a0_sel_r;
            a1_sel_rr <= a1_sel_r;
            a2_sel_rr <= a2_sel_r;
            a3_sel_rr <= a3_sel_r;
        end if;
    end process;
    
end Behavioral;
