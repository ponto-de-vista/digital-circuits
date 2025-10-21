module flipflopD(D, clk, pr, clr, Q, Qn);
    input D, clk, pr, clr;
    output reg Q;
    output Qn;

    always @(negedge clk, posedge pr, posedge clr) begin
        if(pr == 1)begin
            Q <= 1;
        end 
        else if(clr == 1)begin
            Q <= 0;
        end
        else begin 
            Q <= D;
        end
    end
    assign Qn = ~Q;
endmodule