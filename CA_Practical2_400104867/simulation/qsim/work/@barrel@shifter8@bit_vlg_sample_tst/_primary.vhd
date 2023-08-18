library verilog;
use verilog.vl_types.all;
entity BarrelShifter8Bit_vlg_sample_tst is
    port(
        \IN\            : in     vl_logic_vector(7 downto 0);
        shift           : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end BarrelShifter8Bit_vlg_sample_tst;
