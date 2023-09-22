library IEEE;
use IEEE.std_logic_1164.all;



entity testbench_encodeur_prio is
end entity;



architecture ar of testbench_encodeur_prio is

	signal inter : std_logic_vector(15 downto 1);
	
begin


	uut:entity work.encodeur_prio(ar) port map(inter => inter);

	process
	begin
		
		inter <= "000000000000001";
		wait for 10 us;
		
		inter <= "000000000100000";
		wait for 10 us;
		
		inter <= "000000100000000";
		wait for 10 us;
		
		inter <= "010000000000001";
		wait for 10 us;
		
		inter <= "100000000000000";
		wait for 10 us;
		
		inter <= "000100000000001";
		wait for 50 us;
		
		inter <= "000000000000000";
		wait for 10 us;
		
		inter <= "000000000000001";
		wait for 10 us;
		
		inter <= "000000000000010";
		wait for 10 us;
		
		inter <= "000000000000100";
		wait for 10 us;
		
		inter <= "000000000001000";
		wait for 10 us;
		
		inter <= "000000000010000";
		wait for 10 us;
		
		inter <= "000000000100000";
		wait for 10 us;
		
		inter <= "000000001000000";
		wait for 10 us;
		
		inter <= "000000010000000";
		wait for 10 us;
		
		inter <= "000000100000000";
		wait for 10 us;
		
		inter <= "000001000000000";
		wait for 10 us;
		
		inter <= "000010000000000";
		wait for 10 us;
		
		inter <= "000100000000000";
		wait for 10 us;
		
		inter <= "001000000000000";
		wait for 10 us;
		
		inter <= "010000000000000";
		wait for 10 us;
		
		inter <= "100000000000000";
		wait;
	
	end process;

end architecture;
