library verilog;
use verilog.vl_types.all;
entity FinalCircuit is
    port(
        Exp             : out    vl_logic_vector(3 downto 0);
        Y               : in     vl_logic_vector(3 downto 0);
        X               : in     vl_logic_vector(3 downto 0);
        Fraction        : out    vl_logic_vector(2 downto 0)
    );
end FinalCircuit;
