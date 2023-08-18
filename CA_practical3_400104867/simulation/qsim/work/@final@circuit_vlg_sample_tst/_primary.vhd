library verilog;
use verilog.vl_types.all;
entity FinalCircuit_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        INPUT1          : in     vl_logic_vector(7 downto 0);
        INPUT2          : in     vl_logic_vector(7 downto 0);
        S               : in     vl_logic;
        START           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FinalCircuit_vlg_sample_tst;
