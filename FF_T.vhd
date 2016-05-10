library ieee; 
use ieee.std_logic_1164.all;
entity FF_T is
	port
	(
		-- Input ports
		T	: in  std_logic;

		-- Output ports
		Q	: out std_logic
	);
end FF_T;

architecture beh of FF_T is
begin
	ff_in: process (T)
		begin
			if (rising_edge(T)) then
				Q<= NOT Q;
			end if;
	end process;
end beh;			