
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity A1 is
    Port ( clk :in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           i4 : in STD_LOGIC;
           i5 : in STD_LOGIC;
           i6:  in STD_LOGIC;
           i7 : in STD_LOGIC;
           i8 : in STD_LOGIC;
           i9 : in STD_LOGIC;
           i10 : in STD_LOGIC;
           i11 : in STD_LOGIC;
           i12 : in STD_LOGIC;
           i13 : in STD_LOGIC;
           i14 : in STD_LOGIC;
           i15 : in STD_LOGIC;
           i16 : in STD_LOGIC;
           a :  out STD_LOGIC;
           b :  out STD_LOGIC;
           c :  out STD_LOGIC;
           d :  out STD_LOGIC;
           b1 : out STD_LOGIC;
           b2 : out STD_LOGIC;
           a3 : out STD_LOGIC;
           a4 : out STD_LOGIC;
           a5 : out STD_LOGIC;
           a6 : out STD_LOGIC;
           a7 : out STD_LOGIC;
           dp: out std_logic
           );
end A1;

architecture Behavioral of A1 is
signal u0: STD_LOGIC;
signal u1: STD_LOGIC;
signal u2: STD_LOGIC;
signal u3: STD_LOGIC;
signal s0: STD_LOGIC;
signal s1: STD_LOGIC;
signal i: integer:=0;
begin
process(clk)
begin
    if rising_edge(clk) then
        if i < 100000 then
            a<= '0';
            b<='1';
            c<= '1';
            d<= '1';
            s0<= '1';
            s1<= '1';
            i<=i+1;
            dp<= '1';
        elsif i < 200000 then
            a<= '1';
            b<='0';
            c<= '1';
            d<= '1';
            s0<= '0';
            s1<= '1';
            i<=i+1;
            dp<= '0';
        elsif i < 300000 then
            a<= '1';
            b<='1';
            c<= '0';
            d<= '1';
            s0<= '1';
            s1<= '0';
            i<= i+1;
            dp<= '1';
        elsif i <400000 then
            a<= '1';
            b<= '1';
            c<= '1';
            d<= '0';
            s0<='0';
            s1<='0';
            i<= i+1;
            dp <= '0';
        elsif i = 400000 then
            i<= 0;    
        end if;
    end if;
end process;

-- MUX process
process(s0,s1,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16)
begin
    u0 <= (not(s0) and not(s1) and i1) or (s0 and not(s1) and i5) or (not(s0) and s1 and i9) or (s0 and s1 and i13);
    u1 <= (not(s0) and not(s1) and i2) or (s0 and not(s1) and i6) or (not(s0) and s1 and i10) or (s0 and s1 and i14);
    u2 <= (not(s0) and not(s1) and i3) or (s0 and not(s1) and i7) or (not(s0) and s1 and i11) or (s0 and s1 and i15);
    u3 <= (not(s0) and not(s1) and i4) or (s0 and not(s1) and i8) or (not(s0) and s1 and i12) or (s0 and s1 and i16);   
end process;
-- 7 bit decoder
process(u0,u1,u2,u3)
begin
    b1<= ((not u0)  and (not u2) and (u1 xor u3)) or (u0 and u3 and (u1 xor u2));
    b2<=((not u0) and u1 and (u2 xor u3)) or (u0 and  u2 and u3) or (u0 and u1 and (not u3));
    a3<= ((not u0) and u2 and (not u1) and (not u3)) or (u0 and u1 and (not u3)and (not u2))  or (u0 and u1 and u2);
    a4<= ((not u1) and (not u0) and (not u2) and u3) or ((not u0) and u1 and (not u2) and (not u3)) or (u0 and (not u1) and (not u3) and u2) or (u1 and u2 and u3);
    a5<=((not u0) and u1 and(not u2) and (not u3)) or ((not u0) and (not u1) and u2 and u3) or ( (not u0) and u1 and u3) or ((not u1) and (not u2) and u3);
    a6<=((not u0) and (not u1) and (not u2) and u3) or ((not u0) and (not u1) and u2) or (u0 and u1 and (not u2) and u3);
    a7<= ((not u0) and (not u1) and(not u2))or ( (not u0) and u1 and u2 and u3) or (u0 and u1 and (not u2) and (not u3));   
end process;
end Behavioral;