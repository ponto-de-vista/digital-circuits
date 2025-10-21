`include "flipflopD.v"

module registrador_8bits(D, clk, pr, clr, Q, Qn);
    input [7 : 0] D;
    input clk, pr, clr;
    output [7 : 0]Q, Qn;
    genvar i;

    generate
        for (i = 0; i < 8; i = i + 1) begin
            flipflopD ff (.D(D[i]), .clk(clk), .pr(pr), .clr(clr), .Q(Q[i]), .Qn(Qn[i]));
        end
    endgenerate
endmodule