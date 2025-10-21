module demux_fluxo(D, S, Y);
    input D;
    input[1:0] S;
    output [3:0] Y;

  assign Y[0] = (~S[0] & ~S[1])& D;
  assign Y[1] = (S[0] & ~S[1])& D;
  assign Y[2] = (~S[0] & S[1])& D;
  assign Y[3] = (S[0] & S[1])& D;
  endmodule