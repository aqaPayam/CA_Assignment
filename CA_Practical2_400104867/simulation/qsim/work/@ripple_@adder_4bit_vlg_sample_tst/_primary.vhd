library verilog;
use verilog.vl_types.all;
entity Ripple_Adder_4bit_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        C_in            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Ripple_Adder_4bit_vlg_sample_tst;
