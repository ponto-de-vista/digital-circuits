`timescale 1ns/1ns
`include "somador_completo.v"

  module testbench_somador_completo;
    reg A, B, C_in;
    wire S, C_out;

    somador_completo uut (.A(A), .B(B), .C_in(C_in), .C_out(C_out), .S(S));

    initial begin
        $dumpfile("testbench_somador_completo.vcd");
        $dumpvars(0, testbench_somador_completo);

        C_in = 0;
        A = 0; B = 0; #20
        A = 0; B = 1; #20
        A = 1; B = 0; #20
        A = 1; B = 1; #20

        C_in = 1;
        A = 0; B = 0; #20
        A = 0; B = 1; #20
        A = 1; B = 0; #20
        A = 1; B = 1; #20

        $display("Teste completo");
    end
  endmodule
