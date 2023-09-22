library IEEE;
use IEEE.std_logic_1164.all;



entity testbench_deco7seg is
end entity;



architecture ar of testbench_deco7seg is

	signal E : std_logic_vector(3 downto 0);
	
begin


	uut:entity work.deco7seg(ar) port map(E => E);

	process
	begin
		
		E   <= "0000";
		wait for 10 us;
		
		E   <= "0001";
		wait for 10 us;
		
		E   <= "0010";
		wait for 10 us;
		
		E   <= "0011";
		wait for 10 us;
		
		E   <= "0100";
		wait for 10 us;
		
		E   <= "0101";
		wait for 10 us;
		
		E   <= "0110";
		wait for 10 us;
		
		E   <= "0111";
		wait for 10 us;
		
		E   <= "1000";
		wait for 10 us;
		
		E   <= "1001";
		wait for 10 us;
		
		E   <= "1010";
		wait for 10 us;
		
		E   <= "1011";
		wait for 10 us;
		
		E   <= "1100";
		wait for 10 us;
		
		E   <= "1101";
		wait for 10 us;
		
		E   <= "1110";
		wait for 10 us;
		
		E   <= "1111";
		wait;
		
	
	end process;

end architecture;
