library ieee; 
use ieee.std_logic_1164.all;

entity CONT7V2_TB is
end CONT7V2_TB;

architecture test of CONT7V2_TB is

component CONT7V2 is
	port
	(
		-- Input ports
		CLK	: in	std_logic;
		Rst	: in	std_logic;
		EN		: in	std_logic;
		SEL	: in	std_logic_vector(1 downto 0);

		-- Output ports
		out1	: out std_logic_vector(6 downto 0)
	);
end component;

signal CLK,Rst,EN	: 	std_logic:='0';
signal SEL	: 	std_logic_vector(1 downto 0);
signal out1	:  std_logic_vector(6 downto 0);

begin
	CONT1: CONT7V2 port map(CLK=>CLK,Rst=>Rst,EN=>EN,SEL=>SEL,out1=>out1);

	CLK<=not(CLK) after 10ns;

	aplica_entradas: process
	begin
	Rst<='1';
	SEL<="00";
	wait for 1.01us;
	Rst<='0';
	EN<='1';
	wait for 16us;
	SEL<="01";
	wait for 16us;
	SEL<="10";
	wait for 16us;
	SEL<="11";
	wait for 8us;
	assert(false) report "FIN" severity failure;
	end process aplica_entradas;
	
end test;