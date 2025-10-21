`timescale 1ns/1ns
`include "registrador_8bits.v"

module registrador_8bits_testbench;
    reg [7 : 0] D;
    reg clk, pr, clr;
    wire [7 : 0]Q, Qn;

    registrador_8bits uut (.D(D), .clk(clk), .pr(pr), .clr(clr), .Q(Q), .Qn(Qn));

    initial begin
        $dumpfile("registrador_8bits_testbench.vcd");
        $dumpvars(0, registrador_8bits_testbench);
        
        //Limpando com o clr
        D = 8'b11111111; pr = 0; clr = 1; #20;
        //Setando valor com o preset
        D = 8'b00000000; pr = 1; clr = 0; #20
        //Testando D
        pr = 0; clr = 0;
        D = 8'b10100101; #20
        D = 8'b11110000; #20
        D = 8'b10111011; #20
        D = 8'b11100101; #20

        $display("Teste finalizado");
        $finish;
    end

    initial begin
        clk = 1;
        forever #10 clk = ~clk;
    end
endmodule