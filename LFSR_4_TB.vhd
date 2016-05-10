library ieee; 
use ieee.std_logic_1164.all;

entity LFSR_4_TB is
end LFSR_4_TB;

architecture test of LFSR_4_TB is

component LFSR_4 is
	port
	(
		-- Input ports
		Clk	: in  std_logic;
		Set	: in	std_logic;

		-- Output ports
		b	: out std_logic_vector(3 downto 0)
	);
end component;

signal Clk, Set	: std_logic;
signal b				: std_logic_vector(3 downto 0);

begin
	
	LFSR1: LFSR_4 port map(
									Clk=>Clk,
									Set=>Set,
									b=>b
									);
	
	aplica_entradas: process
	begin
		Set <= '1';
		wait for 50ns;
		Set <= '0';
		for i in 0 to 14 loop
			Clk<='0';
			wait for 50ns;
			Clk<='1'; 
			wait for 50ns;
		end loop;
		wait for 50ns;
		wait;
	end process;

end test;