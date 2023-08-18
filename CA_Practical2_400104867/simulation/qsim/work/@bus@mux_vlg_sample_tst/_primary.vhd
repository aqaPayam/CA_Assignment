library verilog;
use verilog.vl_types.all;
entity BusMux_vlg_sample_tst is
    port(
        S               : in     vl_logic;
        S0              : in     vl_logic_vector(7 downto 0);
        S1              : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end BusMux_vlg_sample_tst;
