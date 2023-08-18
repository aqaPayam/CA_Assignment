library verilog;
use verilog.vl_types.all;
entity Adder32BIt_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        S               : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end Adder32BIt_vlg_check_tst;
