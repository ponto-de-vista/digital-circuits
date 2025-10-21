module mux_fluxo(D, S, Y);
    input [3:0] D;
    input [1:0] S; 
    output Y;

    assign Y = (D[0] & ~S[0] & ~S[1])| 
               (D[1] & ~S[0] & S[1])| 
               (D[2] & S[0] & ~S[1])| 
               (D[3] & S[0] & S[1]);
endmodule