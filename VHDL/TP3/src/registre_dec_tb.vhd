library IEEE;
use ieee.std_logic_1164.all;

entity registre_dec_tb is
end entity;

architecture arch_registre_dec_tb of registre_dec_tb is
	signal e_tb, q_tb : std_logic_vector( 7 downto 0);
	signal resetn_tb, load_tb, decal_tb, sens_tb  : std_logic;
	signal clk_tb: std_logic:= '0';
	
	
begin

dut:entity work.registre_dec(arch_registre_dec)
port map(e => e_tb, q => q_tb, clk => clk_tb, resetn => resetn_tb, load => load_tb, decal => decal_tb, sens => sens_tb);
clk_tb <= not clk_tb after 5 us;

process
   begin
		resetn_tb <= '0'; 	---initilaisation
		load_tb <= '0'; 
		decal_tb <= '0';
		sens_tb <= '0';   --- sens_tb PAs du tout prio donc pas testé après
		e_tb <= "00001001";
		wait for 5 us;
		
		resetn_tb <= '0'; 	---test reset
		load_tb <= '1'; 
		decal_tb <= '1';
		sens_tb <= '0';
		e_tb <= "00001001";
		wait for 10 us;
		
		resetn_tb <= '1'; 
		load_tb <= '1';  ---test load
		decal_tb <= '1';
		sens_tb <= '0';
		e_tb <= "00001001";
		wait for 10 us;
		
		resetn_tb <= '1'; 
		load_tb <= '1';  
		decal_tb <= '1';
		sens_tb <= '0';
		e_tb <= "11111111";
		wait for 10 us;
		
		
		resetn_tb <= '1';
		load_tb <= '0';  
		decal_tb <= '1';
		sens_tb <= '0';
		wait for 40 us; 
		
		
		resetn_tb <= '1'; 
		load_tb <= '1';  
		decal_tb <= '0';
		sens_tb <= '0';
		e_tb <= "11111111";
		wait for 10 us;
		
		
		resetn_tb <= '1';
		load_tb <= '0';  
		decal_tb <= '0';
		sens_tb <= '1';
		wait for 10 us; 
		
		
		resetn_tb <= '1';
		load_tb <= '0';  
		decal_tb <= '1';
		sens_tb <= '1';
		wait for 40 us; 
		
		
		resetn_tb <= '1'; 
		load_tb <= '1';  
		decal_tb <= '0';
		sens_tb <= '0';
		e_tb <= "10101111";
		wait for 10 us;
		
		resetn_tb <= '1'; 
		load_tb <= '1';  
		decal_tb <= '1';
		sens_tb <= '0';
		e_tb <= "01011100";
		wait for 10 us;		
		
		resetn_tb <= '0'; 
		load_tb <= '0';  
		decal_tb <= '1';
		sens_tb <= '0';
		e_tb <= "11111111";
		wait;
		

		
end process;
end architecture;