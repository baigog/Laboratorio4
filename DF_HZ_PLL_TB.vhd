library ieee; 
use ieee.std_logic_1164.all;
--Test-Bench de DF_HZ_PLL
entity DF_HZ_PLL_TB is

end DF_HZ_PLL_TB;

architecture test of DF_HZ_PLL_TB is

	signal CLKin: 	std_logic:='0';
	signal SelFreq:std_logic_vector(2 downto 0);
	signal CLKout,Clkaux:	std_logic;
	signal locked: std_LOGIC;
	signal rstDF,rstPLL: std_logic:='1';
	
component DF_HZ_PLL is
	generic
	(
		freq:	integer	:=	50000000
		
	);
	port(
		clkin		:	in	std_LOGIC;
		SelFreq	:	in	std_logic_vector(2 downto 0);
		rstPLL	:	in std_LOGIC;
		rstDF	:	in std_LOGIC;

			
		CLKaux	:	out std_logic;
		CLKout	:	out std_logic;
		LEDout	:	out std_logic;
		locked	:	out std_LOGIC;
		display1: out std_logic_vector(6 downto 0);
		display0: out std_logic_vector(6 downto 0)
		);
end component;

	
begin

	DFPLL1: DF_HZ_PLL port map(clkin=>clkin,SelFreq=>SelFreq,CLKout=>CLKout,locked=>locked,
											LEDout=>open,display0=>open,display1=>open,rstDF=>rstDF,
											rstPLL=>rstPLL,Clkaux=>Clkaux);
	
	CLKin<= not(CLKin) after 10ns;
	
	aplica_entradas: process
		begin
		SELFreq<="000";
		rstPLL<='0';
		rstDF<='0';
		wait until falling_edge(Clkout);		--Se espera un período de salida
		SELFreq<="001";
		wait until falling_edge(Clkout);
		SELFreq<="010";
		wait until falling_edge(Clkout);
			report "FIN" severity failure;
	end process aplica_entradas;

end test;