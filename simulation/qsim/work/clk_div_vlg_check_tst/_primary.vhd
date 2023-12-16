library verilog;
use verilog.vl_types.all;
entity clk_div_vlg_check_tst is
    port(
        clk_6M          : in     vl_logic;
        clk_12M         : in     vl_logic;
        clk_out         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end clk_div_vlg_check_tst;
