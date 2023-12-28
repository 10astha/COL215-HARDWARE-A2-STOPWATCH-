library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity A1_tb1 is
--  Port ( );
end A1_tb1;

architecture Behavioral of A1_tb1 is
component Stopwatch
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
end component;
signal clk,start, pause,continue,reset : std_logic; -- inputs
signal a, b, c, d,b1, b2,a3,a4,a5,a6,a7,dp : std_logic; -- outputs
constant clk_p : time := 5 ps;

begin
process
begin
    clk <= '1';
    wait for clk_p;
    clk<= '0';
    wait for clk_p;
end process;
test: component Stopwatch port map(clk=>clk,start=>start,pause=>pause,reset=>reset,continue=>continue,a=>a,b=>b, c=>c,d=>d,b1=>b1,b2=>b2, a3=>a3,a4=>a4, a5=>a5, a6=>a6, a7=>a7, dp=>dp);
start<= '1' after 10 ns;
start<= '0';
pause<= '0';
pause<= '1' after 20 ns;
reset<= '0';
continue<= '0';
end Behavioral;