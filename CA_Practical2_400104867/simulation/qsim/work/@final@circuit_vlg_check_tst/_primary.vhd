library verilog;
use verilog.vl_types.all;
entity FinalCircuit_vlg_check_tst is
    port(
        Exp             : in     vl_logic_vector(3 downto 0);
        Fraction        : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end FinalCircuit_vlg_check_tst;
