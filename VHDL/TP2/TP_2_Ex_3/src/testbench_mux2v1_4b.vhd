library IEEE;
use IEEE.std_logic_1164.all;



entity testbench_mux2v1_4b is

end entity;



architecture ar of testbench_mux2v1_4b is
	signal sel: std_logic;
	signal A,B, S: std_logic_vector(3 downto 0);
	

begin
	-- pour chacune des valeurs de sel, faire au minimum 2 valeurs pour A. 
	-- Pour chaque valeur de A, faire au minimum 2 valeurs de B
	uut:entity work.mux2v1_4b(ar) 
	port map(sel => sel, A => A, B => B, S => S);
	
	process
	begin
		sel <= '0';
		A <= "0100";
		B <= "0000";
		wait for 10 us;
		
		B <= "1111";
		wait for 10 us;
		
		A <= "1000";
		B <= "0001";
		wait for 10 us;
		
		B <= "1101";
		wait for 10 us;
		
		sel <= '1';
		A <= "0110";
		B <= "0011";
		wait for 10 us;
		
		B <= "0111";
		wait for 10 us;
		
		A <= "1001";
		B <= "1101";
		wait for 10 us;
		
		B <= "0100";
		wait;
		
		

	end process;
end architecture;
