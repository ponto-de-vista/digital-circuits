`timescale 1ns/1ns
`include "subtrator_completo.v"

module testbench_subtrator_completo;

    reg A, B, Cin;
    wire S, Cout;

    subtrator_completo uut (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

    initial begin
        $dumpfile("testbench_subtrator_completo.vcd");
        $dumpvars(0, testbench_subtrator_completo);

        Cin = 0;
        A = 0; B = 0; #20
        A = 0; B = 1; #20
        A = 1; B = 0; #20
        A = 1; B = 1; #20

        Cin = 1;
        A = 0; B = 0; #20
        A = 0; B = 1; #20
        A = 1; B = 0; #20
        A = 1; B = 1; #20

        $display("Teste completo");
    end

endmodule