library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CONT4_UPDOWN_TB is
end CONT4_UPDOWN_TB;

architecture tb of CONT4_UPDOWN_TB is
	component CONT4_UPDOWN is
	port
	(
		-- Input ports
		Clk	: in  std_logic;		--Reloj
		UPDOWN: in	std_logic;		--'1' para incrementar el contador, '0' para decrementar.
		EN		: in	std_logic;		--Entrada de habilitación
		X2		: in	std_logic;		--Permite al contador incrementar/decrementar dos veces
		Rst	: in	std_logic;		--Resetea la salida a '0000'
		

		-- Output ports
		b	: out std_logic_vector(3 downto 0);	--Salida	
		ovf: out std_logic							--Overflow
	);
end component;
	signal Clk:	std_logic:='0';
	signal EN,UPDOWN,X2,Rst,ovf:	std_logic;
	signal b: std_logic_vector(3 downto 0);
	
	
	begin
	CONT4: CONT4_UPDOWN port map(
			Clk=>Clk,
			EN=>EN,
			UPDOWN=>UPDOWN,
			X2=>X2,
			b=>b,
			Rst=>Rst,
			ovf=>ovf);
			
	Clk <= not(Clk) after 50ns;	
	
	aplica_entradas: process
	begin
	EN<='0';
	UPDOWN<='1';
	X2<='0';
	Rst<='0';	
	wait until rising_edge(Clk);
	EN<='1';
	for i in 0 to 15 loop
		wait until rising_edge(Clk);
	end loop;
	UPDOWN<='0';
	for i in 0 to 15 loop
		wait until rising_edge(Clk);
	end loop;
	X2<='1';
	UPDOWN<='1';
	for i in 0 to 7 loop
		wait until rising_edge(Clk);
	end loop;
	Rst<='1';
	wait until rising_edge(Clk);
	Rst<='0';	
	UPDOWN<='0';
	for i in 0 to 7 loop
		wait until rising_edge(Clk);
	end loop;		
	wait;
	end process aplica_entradas;
end tb;
		
		