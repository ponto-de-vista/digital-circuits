`timescale 1ns/1ns
`include "mux_comportamental.v"
`include "mux_fluxo.v"

  module mux_testbench;

    reg [3:0] D;
    reg [1:0] S;
    wire Y;

    //mux_fluxo uut (.D(D), .S(S), .Y(Y));
    mux_comportamental uut (.D(D), .S(S), .Y(Y));

    initial begin
        //$dumpfile("mux_testbench_fluxo.vcd");
        $dumpfile("mux_testbench_comportamental.vcd");
        $dumpvars(0, mux_testbench);

        D = 4'b1010; 
        S = 2'b00; #20
        S = 2'b01; #20
        S = 2'b10; #20
        S = 2'b11; #20

        $display("Teste completo");
    end
  endmodule
