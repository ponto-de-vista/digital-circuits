`timescale 1ns/1ns
`include "flipflopJK.v"

module flipflopJK_testbench;
    reg J, K, clk, pr, clr;
    wire Q, Qn;

    flipflopJK uut (.J(J), .K(K), .clk(clk), .pr(pr), .clr(clr), .Q(Q), .Qn(Qn));

    initial begin
        $dumpfile("flipflopJK_testbench.vcd");
        $dumpvars(0, flipflopJK_testbench);
        
        //Limpando com o clr
        J = 1; K = 0; pr = 1; clr = 0; #20
        //Setando valor com o preset
        J = 0; K = 1; pr = 0; clr = 1; #20
        //Testando J e K
        pr = 1; clr = 1;
        J = 0; K = 1; #20
        J = 1; K = 0; #20
        //Invertendo os valores de Q e Qn
        J = 1; K = 1; #20

        $display("Teste finalizado");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
endmodule
