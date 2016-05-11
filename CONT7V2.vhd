library ieee; 
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--Contador LFSR/UP/DOWN/UP (X2) con entrada selectora y frecuencia de salida de 1Hz, se debe ingresar con 50MHz.
--Posee entrada de habilitación y reseteo.
entity CONT7V2 is
	port
	(
		-- Input ports
		CLK	: in	std_logic;								--Reloj de entrada
		Rst	: in	std_logic;								--Reset asincrónico
		EN		: in	std_logic;								--Entrada de habilitación (no afecta a LFSR)
		SEL	: in	std_logic_vector(1 downto 0);		--Entrada selectora

		-- Output ports
		out1	: out std_logic_vector(6 downto 0)
	);
end CONT7V2;

architecture beh of CONT7V2 is

component CONT_7SEG is
	port
		(
			-- Input ports
			C_1	: in  std_logic_vector(3 downto 0);
			C_2	: in  std_logic_vector(3 downto 0);
			C_3	: in  std_logic_vector(3 downto 0);
			C_4	: in  std_logic_vector(3 downto 0);
			SEL	: in	std_logic_vector(1 downto 0);
			

			-- Output ports
			out1	: out std_logic_vector(6 downto 0)
		);

end component;
	
component LFSR_4 is
	port(
		Clk	: in  std_logic;
		Set	: in	std_logic;

		b	: out std_logic_vector(3 downto 0)
	);
end component;

component CONT4_UPDOWN is
	port
	(
		-- Input ports
		Clk	: in  std_logic;
		UPDOWN: in	std_logic;
		EN		: in	std_logic;
		X2		: in	std_logic;
		Rst	: in	std_logic;
		

		-- Output ports
		b	: out std_logic_vector(3 downto 0);
		ovf: out std_logic
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
	
	);
end component;

signal lfsraux: std_logic_vector(3 downto 0);
signal cont1aux,cont2aux,cont3aux: std_logic_vector(3 downto 0);
signal Clkaux: std_logic;

begin
	s7SEG1	:	 CONT_7SEG port map(
			C_1	=>	lfsraux,
			C_2	=>	cont1aux,
			C_3	=>	cont2aux,
			C_4	=>	cont3aux,
			SEL	=>	SEL,
			out1	=>	out1
		);
			
	LFSR1		:	LFSR_4 port map(
			Clk	=>	Clkaux,
			Set	=>	Rst,
			b		=>	lfsraux
		);
	
	CONT1			:	CONT4_UPDOWN port map(		--Contador UP
		Clk		=>	Clkaux,
		UPDOWN 	=>	'1',
		EN			=>	EN,
		X2			=>	'0',
		Rst		=>	Rst,
		b			=>	cont1aux,
		ovf		=>	open
	);
		
	CONT2			:	CONT4_UPDOWN port map(		--Contador DOWN
		Clk		=>	Clkaux,
		UPDOWN 	=>	'0',
		EN			=>	EN,
		X2			=>	'0',
		Rst		=>	Rst,
		b			=>	cont2aux,
		ovf		=>	open
	);
		
	CONT3			:	CONT4_UPDOWN port map(		--Contador UP 2X
		Clk		=>	Clkaux,
		UPDOWN 	=>	'1',
		EN			=>	EN,
		X2			=>	'1',
		Rst		=>	Rst,
		b			=>	cont3aux,
		ovf		=>	open
	);
		
	DF1 			: DF_HZ port map(
		CLKin		=>	CLK,
		rst		=>	Rst,
		SelFreq	=>	"100",
		
		CLKout	=>	Clkaux,
		LEDout	=>	open,
		display1	=>	open,
		display0	=>	open
	);
	
	end beh;