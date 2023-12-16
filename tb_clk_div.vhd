plibrary ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_clk_div is
end entity;

architecture rtl of tb_clk_div is
component clk_div 
	Port( clk  	: in  std_logic;
			clk_out	: out std_logic);
end component;

signal clk,clk_out: std_logic;
constant period : time:= 20 ns;

begin 

uut: clk_div port map(
		clk=>clk,
		clk_out=>clk_out
);

stim_proc: process
begin
	clk<='0';
	wait for period/2;
	clk<='1';
	wait for period/2;

end process;
end rtl;