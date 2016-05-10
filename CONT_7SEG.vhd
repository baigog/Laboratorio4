library ieee;
use ieee.std_logic_1164.all;

entity CONT_7SEG is
port
	(
		-- Input ports
		C_1	: in  std_logic_vector(3 downto 0);		-- 4 Entradas para contadores de 4 bits
		C_2	: in  std_logic_vector(3 downto 0);
		C_3	: in  std_logic_vector(3 downto 0);
		C_4	: in  std_logic_vector(3 downto 0);
		SEL	: in	std_logic_vector(1 downto 0);
		

		-- Output ports
		out1	: out std_logic_vector(6 downto 0)		--Salida decodificada para display 7 segmentos
	);

end CONT_7SEG;

architecture interna of CONT_7SEG is

	component MUX_4_1 is
	port
		(
		in0,in1,in2,in3	: in  std_logic;
		sel	: in	std_logic_vector(1 downto 0);
		out1	: out	std_logic
		);
	end component;
	
	component DEC_HEX_7SEG is
	port(
		in1	: in  std_logic_vector(3 downto 0);
		out1	: out std_logic_vector(6 downto 0)
		);
	end component;
	
	signal indec:std_logic_vector(3 downto 0);	--Señal auxiliar para entrada del decodificador
	
	begin
	CONT_7SEG: for i in 3 downto 0 generate
		MUX:MUX_4_1 port map(in0=>C_1(i),in1=>C_2(i),in2=>C_3(i),in3=>C_4(i),sel=>SEL,out1=>indec(i));	--Multiplexado de los bits de los contadores
	end generate CONT_7SEG;
	DEC:DEC_HEX_7SEG port map(in1=>indec,out1=>out1);
	
end interna;