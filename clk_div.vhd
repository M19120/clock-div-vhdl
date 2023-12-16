library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity clk_div is
	Port( clk  	: in  std_logic; 
			clk_out	: out std_logic);
end clk_div;

architecture Behavioral of clk_div is 
	signal cuenta: integer range 0 to 25  ; --signal to control clock m
	signal q_oi: std_logic := '0';
	
begin 
	process(clk)
	begin
	
		if(clk'event and clk ='1') then 
			if(cuenta<25) then 
				cuenta<=cuenta+1;
			else 
				cuenta<= 0;
				q_oi<=not q_oi;
			end if;
		end if;
	end process;	
	clk_out<=q_oi;
end Behavioral;