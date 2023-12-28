library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Stopwatch is
    Port ( clk : in STD_LOGIC;
           start : in STD_LOGIC;
           pause : in STD_LOGIC;
           continue : in STD_LOGIC;
           reset : in STD_LOGIC;
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
           dp : out STD_LOGIC;
           a7 : out STD_LOGIC);
end Stopwatch;

architecture Behavioral of Stopwatch is
        component a2 is 
        Port ( clk : in std_logic; 
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
        end component;
        component A1 is
        Port(clk :in STD_LOGIC;
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
           dp : out STD_LOGIC
           );
           end component;
signal i1: std_logic;
signal i2: std_logic;
signal i3: std_logic;
signal i4: std_logic;
signal i5: std_logic;
signal i6: std_logic;
signal i7: std_logic;
signal i8: std_logic;
signal i9: std_logic;
signal i10: std_logic;
signal i11: std_logic;
signal i12: std_logic;
signal i13: std_logic;
signal i14: std_logic;
signal i15: std_logic;
signal i16: std_logic;
begin
counter: component a2 port map(clk=>clk,start=>start,pause=>pause,reset=>reset,continue=>continue, i1 => i1, i2 => i2, i3 => i3, i4=> i4, i5 => i5, i6=> i6, i7 => i7, i8 => i8, i9 => i9, i10 => i10, i11 => i11, i12 => i12, i13 => i13, i14 => i14, i15 => i15, i16 => i16);
bitdecoder: component A1 port map(clk=>clk,i1 => i1, i2 => i2, i3 => i3, i4=> i4, i5 => i5, i6=> i6, i7 => i7, i8 => i8, i9 => i9, i10 => i10, i11 => i11, i12 => i12, i13 => i13, i14 => i14, i15 => i15, i16 => i16,a=>a,b=>b, c=>c,d=>d,b1=>b1,b2=>b2, a3=>a3,a4=>a4, a5=>a5, a6=>a6, a7=>a7, dp=>dp); 

end Behavioral;