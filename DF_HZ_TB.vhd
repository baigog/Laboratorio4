library ieee; 
use ieee.std_logic_1164.all;

entity DF_HZ_TB is

end DF_HZ_TB;

architecture test of DF_HZ_TB is

	signal CLKin: 	std_logic:='0';
	signal rst:		std_logic;
	signal SelFreq:std_logic_vector(2 downto 0);
	signal CLKout:	std_logic;
	
	component DF_HZ is
	generic
	(
		freq:	integer	:=	50000000
		
	);
	port(
		CLKin: 	in	std_logic;
		rst:		in	std_logic;
		SelFreq:	in	std_logic_vector(2 downto 0);
		
		CLKout: 		out std_logic;
		LEDout: 		out std_logic;
		display1:	out std_logic_vector(6 downto 0);
		display0:	out std_logic_vector(6 downto 0)
	
	);
	end component;
	
begin

	DF1: DF_HZ generic map(freq=>1200) port map(CLKin=>CLKin,rst=>rst,SelFreq=>SelFreq,CLKout=>CLKout,LEDout=>open,display1=>open,display0=>open);
	
	CLKin<= not(CLKin) after 416.66us;
	
	aplica_entradas: process
		begin
		rst <='1';
		SELFreq<="011";
		wait for 1ms;
		rst <='0';
		wait for 500ms;
		rst <='1';
		SELFreq<="010";
		wait for 1ms;
		rst <='0';
		wait for 1000ms;
		assert(false)
			report "FIN" severity failure;
	end process aplica_entradas;

end test;