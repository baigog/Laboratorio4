library ieee; 
use ieee.std_logic_1164.all;

entity DF_HZ_PLL is
	port(
		clkin		:	in	std_LOGIC;
		SelFreq	:	in	std_logic_vector(2 downto 0);
			
		CLKout	:	out std_logic;
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

signal clkaux					:	std_logic;
signal resetaux,lockedaux	:	std_logic;

begin

	PLL1 : PLL port map (
			areset	 => '0',
			inclk0	 => clkin,
			c0			 => clkaux,
			locked	 => lockedaux
	);	
	
	DF1 : DF_HZ generic map(freq=>1200) port map (
			CLKin			=> clkaux,
			rst			=> '0',
			SelFreq		=> SelFreq,
			
			CLKout		=>	clkout,
			LEDout		=>	ledout,
			display1		=>	display1,
			display0		=> display0
	);
			
end beh;

