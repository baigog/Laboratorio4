library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity DF_50MHZ is
	port(
		Clk	: in	std_logic;
		EN		: in	std_logic;
		
		CLKout: out std_logic
	
	);
end DF_50MHZ;

architecture interna of DF_50MHZ is
	component CONT4_UPDOWN is
	port
		(
		Clk	: in	std_logic;
		UPDOWN: in	std_logic;
		EN		: in	std_logic;
		X2		: in	std_logic;
		Rst	: in	std_logic;
		
		b		: out std_logic_vector(3 downto 0);
		ovf	: out std_logic
		);
	end component;

	signal auxovf	:	std_logic_vector(7 downto 0);
	signal GND,VCC,Rst,auxOut: std_logic;
	signal b: std_logic_vector(31 downto 0);
	
	begin
	GND<='0';
	VCC<='1';
	Rst<='0';
	
		DF1_50MHZ: for i in 7 downto 0 generate
		i0: if (i=0) generate
			b0: CONT4_UPDOWN port map(Clk=>Clk,UPDOWN=>VCC,EN=>EN,X2=>GND,Rst=>Rst,b=>b(i+3 downto i),ovf=>auxovf(i));
		end generate i0;
		i16: if (i>0 and i<7) generate
			b16: CONT4_UPDOWN port map(Clk=>Clk,UPDOWN=>VCC,EN=>auxovf(i-1),X2=>GND,Rst=>Rst,b=>b(4*i+3 downto 4*i),ovf=>auxovf(i));
		end generate i16;
		i7: if (i=7) generate
			b7: CONT4_UPDOWN port map(Clk=>Clk,UPDOWN=>VCC,EN=>auxovf(i-1),X2=>GND,Rst=>Rst,b=>b(4*i+3 downto 4*i),ovf=>open);
		end generate i7;
	end generate DF1_50MHZ;

	auxOut<= '1' when unsigned(b)=1000000;
	toggle: process
	begin
	if(rising_edge(auxOut))
		CLKout<=not(CLKout);
	end process;
	

end interna;