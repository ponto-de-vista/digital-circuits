`timescale 1ns/1ns
`include "meio_subtrator.v"

  module meio_subtrator_testbench;

    reg A, B;
    wire S, C_out;

    meio_subtrator uut (.A(A), .B(B), .S(S), .C_out(C_out));

    initial begin
        $dumpfile("meio_subtrator_testbench.vcd");
        $dumpvars(0, meio_subtrator_testbench);

        A = 1'b0; B = 1'b0; #20;
        A = 1'b0; B = 1'b1; #20;
        A = 1'b1; B = 1'b0; #20;
        A = 1'b1; B = 1'b1; #20;

        $display("Teste completo");
    end
  endmodule
