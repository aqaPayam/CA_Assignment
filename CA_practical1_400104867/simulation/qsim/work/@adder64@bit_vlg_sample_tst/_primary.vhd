library verilog;
use verilog.vl_types.all;
entity Adder64Bit_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(63 downto 0);
        B               : in     vl_logic_vector(63 downto 0);
        Cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Adder64Bit_vlg_sample_tst;
