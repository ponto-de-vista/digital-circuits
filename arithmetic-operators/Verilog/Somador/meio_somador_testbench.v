`timescale 1ns/1ns
`include "meio_somador.v"

module meio_somador_testbench;
    reg A, B;
    wire S, C;

    meio_somador uut (.A(A), .B(B), .S(S), .C(C));

    initial begin
        $dumpfile("meio_somador_testbench.vcd");
        $dumpvars(0, meio_somador_testbench);
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        $display("Teste finalizado");
        $finish;
    end
endmodule