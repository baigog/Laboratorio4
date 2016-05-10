library ieee; 
use ieee.std_logic_1164.all;

entity PLL_TB is

end PLL_TB;

architecture test of PLL_TB is

	signal areset,inclk0,c0, locked: 	std_logic:='0';
	
component PLL is
	port
	(
		areset		: in STD_LOGIC;
		inclk0		: in STD_LOGIC;
		c0				: out STD_LOGIC ;
		locked		: out STD_LOGIC 
	);
end component;

	
begin

	PLL1: PLL port map(areset=>areset, inclk0=>inclk0, c0=>c0, locked=>locked);
	
	inclk0<= not(inclk0) after 10ns;
	
	aplica_entradas: process
		begin
		areset <='1';
		wait for 10ns;
		areset <='0';
		wait for 1000ns;
		areset <='1';
		wait for 50ns;
		assert(false)
			report "FIN" severity failure;
	end process aplica_entradas;

end test;