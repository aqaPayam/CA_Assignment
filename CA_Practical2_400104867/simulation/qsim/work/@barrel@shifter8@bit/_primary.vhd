library verilog;
use verilog.vl_types.all;
entity BarrelShifter8Bit is
    port(
        \OUT\           : out    vl_logic_vector(7 downto 0);
        shift           : in     vl_logic_vector(2 downto 0);
        \IN\            : in     vl_logic_vector(7 downto 0)
    );
end BarrelShifter8Bit;
