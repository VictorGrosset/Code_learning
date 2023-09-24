library IEEE;
use IEEE.std_logic_1164.all;



entity testbench_deco1p4 is

end entity;



architecture ar of testbench_deco1p4 is
signal en_TB : std_logic;
signal sel_TB : std_logic_vector(1 downto 0);
signal s_deco_TB : std_logic_vector(3 downto 0);

begin

dut : entity work.deco1p4(arch_deco1p4) 
--component deco1p4 is 
--	port (en : std_logic;
--			sel : std_logic_vector(1 downto 0);
--			s_deco : std_logic_vector(3 downto 0) );
--end component;

port map ( en => en_TB, sel => sel_TB, s_deco => s_deco_TB);

process 
	begin
		en_TB <= '0';
		sel_TB <= "00";		
		wait for 10us; 

		sel_TB <= "01";		
		wait for 10us; 

		sel_TB <= "10";		
		wait for 10us; 
		
		sel_TB <= "11";		
		wait for 10us; 
				
		
		en_TB <= '1';
		sel_TB <= "00";		
		wait for 10us; 
		
		
		sel_TB <= "01";		
		wait for 10us; 
		
		
		sel_TB <= "10";		
		wait for 10us; 		
		
		
		sel_TB <= "11";		
		wait ; 
		
end process;
end architecture;
