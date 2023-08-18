library verilog;
use verilog.vl_types.all;
entity Multiplier4Bits_vlg_check_tst is
    port(
        P               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Multiplier4Bits_vlg_check_tst;
