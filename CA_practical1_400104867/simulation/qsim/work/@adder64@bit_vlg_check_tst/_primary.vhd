library verilog;
use verilog.vl_types.all;
entity Adder64Bit_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        S               : in     vl_logic_vector(63 downto 0);
        sampler_rx      : in     vl_logic
    );
end Adder64Bit_vlg_check_tst;
