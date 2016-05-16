library ieee; 
use ieee.std_logic_1164.all;
--Divisor de frecuencias, permite salidas de (0.1Hz, 0.5Hz, 1Hz, 2Hz y 5Hz), con una entrada de reloj por defecto de 50MHz.
--Utiliza un PLL para reducir la frecuencia de entrada de 50MHz a 1.2KHz
entity DF_HZ_PLL is
	port(
		clkin		:	in	std_LOGIC;
		SelFreq	:	in	std_logic_vector(2 downto 0);
		rstPLL	:	in std_LOGIC;		--Reset del PLL
		rstDF	:	in std_LOGIC;			--Reset del divisor de frecuencias

			
		CLKout	:	out std_logic;		--Reloj de salida del divisor de frecuencias
		CLKaux	:	out std_logic;		--Reloj de salida del PLL
		LEDout	:	out std_logic;
		locked	:	out std_LOGIC;
		display1: out std_logic_vector(6 downto 0);
		display0: out std_logic_vector(6 downto 0)
		);
end DF_HZ_PLL;

architecture beh of DF_HZ_PLL is

component PLL is
	port
	(
		areset		: in STD_LOGIC;
		inclk0		: in STD_LOGIC;
		c0				: out STD_LOGIC ;
		locked		: out STD_LOGIC 
	);
end component;

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
	
	);end component;

signal clkaux1,nclkaux1			:	std_logic;

begin

	PLL1 : PLL port map (
			areset	 => rstPLL,
			inclk0	 => clkin,
			c0			 => clkaux1,
			locked	 => locked
	);	
	
	DF1 : DF_HZ generic map(freq=>1200) port map (
			CLKin			=> nclkaux1,
			rst			=> rstDF,
			SelFreq		=> SelFreq,
			
			CLKout		=>	clkout,
			LEDout		=>	ledout,
			display1		=>	display1,
			display0		=> display0
	);
	nclkaux1<=not(clkaux1);
	Clkaux<=nClkaux1;
			
end beh;

