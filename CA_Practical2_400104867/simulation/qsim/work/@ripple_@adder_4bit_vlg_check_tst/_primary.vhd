library verilog;
use verilog.vl_types.all;
entity Ripple_Adder_4bit_vlg_check_tst is
    port(
        C_out           : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Ripple_Adder_4bit_vlg_check_tst;
