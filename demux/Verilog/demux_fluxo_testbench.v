`timescale 1ns/1ns
`include "demux_fluxo.v"

  module demux_fluxo_testbench;

    reg [1:0] S;
    wire [3:0] Y;
    reg D;

    demux_fluxo uut (.S(S), .Y(Y), .D(D));

    initial begin
        $dumpfile("demux_fluxo_testbench.vcd");
        $dumpvars(0, demux_fluxo_testbench);

        D = 1'b1;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;

        D = 1'b0;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;

        $display("Teste completo");

    end
  endmodule
