
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity a2 is
    Port ( clk: in STD_LOGIC;
           start : in STD_LOGIC;
           pause : in STD_LOGIC;
           continue : in STD_LOGIC;
           reset : in STD_LOGIC;
           i1 : out STD_LOGIC;
           i2 : out STD_LOGIC;
           i3 : out STD_LOGIC;
           i4 : out STD_LOGIC;
           i5 : out STD_LOGIC;
           i6:  out STD_LOGIC;
           i7 : out STD_LOGIC;
           i8 : out STD_LOGIC;
           i9 : out STD_LOGIC;
           i10 : out STD_LOGIC;
           i11 : out STD_LOGIC;
           i12 : out STD_LOGIC;
           i13 : out STD_LOGIC;
           i14 : out STD_LOGIC;
           i15 : out STD_LOGIC;
           i16 : out STD_LOGIC
           );
end a2;

architecture Behavioral of a2 is
signal enable_watch: std_logic:='0';
signal k: integer:=0;
signal n1: integer:= 0;
signal n2: integer:= 0;
signal n3: integer:= 0;
signal n4: integer:= 0;
signal pauser: std_logic:= '0';
signal starter: std_logic:= '0';
signal continuer: std_logic:= '0';
signal pause_continue:std_logic:= '0';
signal reseter:std_logic:= '0';
begin
    
    process(clk,start,pause,continue)
    begin
    if rising_edge(clk) then
        if start = '1' and not(start = starter) then
            enable_watch<= '1';
        elsif pause = '1' and not(pause = pauser) then
            enable_watch<= '0';
            pause_continue<='1';
        elsif continue= '1' and not(continue = continuer) and pause_continue = '1' then
            enable_watch<= '1';
            pause_continue<='0';
        elsif reset = '1' and not(reset= reseter) then
            enable_watch<= '0';
        end if;
        starter<= start;
        pauser<=pause;
        continuer<=continue;
        reseter<=reset;
    end if;
    end process;
            
    process(clk,enable_watch,reset)
    begin
        if rising_edge(clk) then
            if k < 10000000 then
                k <= k+1;
            elsif k = 10000000 then
                k<= 0;
                if reset = '1' then
                    n1<= 0;
                    n2<=0;
                    n3<= 0;
                    n4 <= 0;
                elsif enable_watch = '1' then
                    if n4 = 9 then
                        if n3 = 9 then 
                            if n2 = 5 then
                                if n1 = 9 then
                                    n2<=0;
                                    n3<= 0;
                                    n4 <= 0;
                                end if;
                                n1 <= (n1+1)mod 10;
                            end if;
                            n2 <= (n2+1) mod 6;
                            end if;
                        n3<= (n3+1) mod 10;
                        end if;                        
                    n4<= (n4+1) mod 10;                                            
                end if;
            end if;   
        end if;
    end process;
    
    process(n1,n2,n3,n4)   
    begin
    if (n1=8 or n1=9) then
        i1<='1';
    else
        i1<='0';
    end if;
    if (n1=4 or n1=5 or n1=6 or n1=7) then
        i2<='1';
    else
        i2<='0';
    end if;
    if (n1=2 or n1=3 or n1=6 or n1=7) then
        i3<='1';
    else
        i3<='0';
    end if;
    if (n1=1 or n1=3 or n1=5 or n1=7) then
        i4<='1';
    else
        i4<='0';
    end if;
    if (n2=8 or n2=9) then
        i5<='1';
    else
        i5<='0';
    end if;
    if (n2=4 or n2=5 or n2=6 or n2=7) then
        i6<='1';
    else
        i6<='0';
    end if;
    if (n2=2 or n2=3 or n2=6 or n2=7) then
        i7<='1';
    else
        i7<='0';
    end if;
    if (n2=1 or n2=3 or n2=5 or n2=7) then
        i8<='1';
    else
        i8<='0';
    end if;
    if (n3=8 or n3=9) then
        i9<='1';
    else
        i9<='0';
    end if;
    if (n3=4 or n3=5 or n3=6 or n3=7) then
        i10<='1';
    else
        i10<='0';
    end if;
    if (n3=2 or n3=3 or n3=6 or n3=7) then
        i11<='1';
    else
        i11<='0';
    end if;
    if (n3=1 or n3=3 or n3=5 or n3=7 or n3= 9) then
        i12<='1';
    else
        i12<='0';
    end if;
    if (n4=8 or n4=9) then
        i13<='1';
    else
        i13<='0';
    end if;
    if (n4=4 or n4=5 or n4=6 or n4=7) then
        i14<='1';
    else
        i14<='0';
    end if;
    if (n4=2 or n4=3 or n4=6 or n4=7) then
        i15<='1';
    else
        i15<='0';
    end if;
    if (n4=1 or n4=3 or n4=5 or n4=7 or n4=9) then
        i16<='1';
    else
        i16<='0';
    end if;
    end process;
    
end Behavioral;