`timescale 1ns/1ns
`include "flipflopD.v"

module flipflopD_testbench;
    reg D, clk, pr, clr;
    wire Q, Qn;

    flipflopD uut (.D(D), .clk(clk), .pr(pr), .clr(clr), .Q(Q), .Qn(Qn));

    initial begin
        $dumpfile("flipflopD_testbench.vcd");
        $dumpvars(0, flipflopD_testbench);
        
        //Limpando com o clr
        D = 1; pr = 0; clr = 1; #20
        //Setando valor com o preset
        D = 0; pr = 1; clr = 0; #20
        //Testando D
        pr = 0; clr = 0;
        D = 0; #20
        D = 1; #20

        $display("Teste finalizado");
        $finish;
    end

    initial begin
        clk = 1;
        forever #10 clk = ~clk;
    end
endmodule
