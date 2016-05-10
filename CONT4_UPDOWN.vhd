library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CONT4_UPDOWN is
	port
	(
		-- Input ports
		Clk	: in  std_logic;		--Reloj
		UPDOWN: in	std_logic;		--'1' para incrementar el contador, '0' para decrementar.
		EN		: in	std_logic;		--Entrada de habilitación
		X2		: in	std_logic;		--Permite al contador incrementar/decrementar dos veces
		Rst	: in	std_logic;		--Resetea la salida a '0000'. Asincrónico
		

		-- Output ports
		b	: out std_logic_vector(3 downto 0);
		ovf: out std_logic			--Overflow. Válido solo para X2='0'
	);
end CONT4_UPDOWN;

architecture beh of CONT4_UPDOWN is
	shared variable aux : unsigned(3 downto 0) := (others => '0');	--Salida auxiliar
begin
	clock_event: process (Clk, Rst)
	begin
		if(Rst='1') then --Reset Asincrónico
			b<=(others=>'0');
			ovf<='0';
		elsif(rising_edge(Clk)) then
			if(EN='1') then			
				if(UPDOWN='1') then
					aux:=aux+1+to_integer(unsigned'("" & X2));	--Si X2='0' => aux=aux+1, sino aux=aux+2
					if(aux="0000") then		--Se marcará overflow correctamente solo para X2=0
						ovf<='1';
						else ovf<='0';
					end if;
				else
					aux:=aux-1-to_integer(unsigned'("" & X2));
					if(aux="1111") then		--Se marcará overflow correctamente solo para X2=0
						ovf<='1';
					else ovf<='0';
					end if;
				end if;
			end if;
		b <= std_logic_vector(aux);
		end if;	
	end process;
end beh;