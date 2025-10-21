module flipflopJK(J, K, clk, pr, clr, Q, Qn);
    input J, K, clk, pr, clr;
    output reg Q;
    output Qn;

    always @(posedge clk, negedge pr, negedge clr) begin
        if(pr == 0)begin
            Q <= 1;
        end 
        else if(clr == 0)begin
            Q <= 0;
        end
        else begin 
            case({J,K}) 
                2'b00 : Q <= Q;
                2'b01 : Q <= 0;
                2'b10 : Q <= 1;
                2'b11 : Q <= ~Q; 
            endcase   
        end
    end

    assign Qn = ~Q;
endmodule