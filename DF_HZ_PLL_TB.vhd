library ieee; 
use ieee.std_logic_1164.all;

entity DF_HZ_PLL_TB is

end DF_HZ_PLL_TB;

architecture test of DF_HZ_PLL_TB is

	signal CLKin: 	std_logic:='0';
	signal rst,rstPLL:		std_logic;
	signal SelFreq:std_logic_vector(2 downto 0);
	signal CLKout:	std_logic;
	signal locked: std_LOGIC;
	
component DF_HZ_PLL is
	generic
	(
		freq:	integer	:=	50000000
		
	);
	port(
		rst		:	in	std_LOGIC;
		rstPLL	:	in	std_LOGIC;
		clkin		:	in	std_LOGIC;
		SelFreq	:	in	std_logic_vector(2 downto 0);
			
		CLKout	:	out std_logic;
		LEDout	:	out std_logic;
		locked	:	out std_LOGIC;
		display1: out std_logic_vector(6 downto 0);
		display0: out std_logic_vector(6 downto 0)
		);
end component;

	
begin

	DFPLL1: DF_HZ_PLL generic map(freq=>1200) port map(clkin=>clkin,rst=>rst,rstPLL=>rstPLL,SelFreq=>SelFreq,CLKout=>CLKout,locked=>locked,
											LEDout=>open,display0=>open,display1=>open);
	
	CLKin<= not(CLKin) after 10ns;
	
	aplica_entradas: process
		begin
		rstPLL<='1';
		rst <='1';
		SELFreq<="011";
		wait for 20ns;
		rstPLL<='0';
		rst <='0';
		wait for 1200us;
		--rst <='1';
		--SELFreq<="010";
		--wait for 10ns;
		--rst <='0';
		--wait for 1000ms;
		assert(false)
			report "FIN" severity failure;
	end process aplica_entradas;

end test;