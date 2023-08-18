library verilog;
use verilog.vl_types.all;
entity Adder32BIt_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        Cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Adder32BIt_vlg_sample_tst;
