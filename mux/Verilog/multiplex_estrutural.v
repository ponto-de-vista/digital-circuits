module multiplex_estrutural(D, S, Y);

    parameter WIDTH_D = 4;
    parameter WIDTH_S = 2;

    input [WIDTH_D-1: 0] D;
    input [WIDTH_S-1: 0] S;
    output Y;
    wire s1n, s0n;
    wire s1n_s0n_d0, s1n_s0_d1, s1_s0n_d2, s1_s0_d3;

    not i0 (s0n, S[0]);
    not i1 (s1n, S[1]);
    and i2 (s1n_s0n_d0, s1n, s0n, D[0]);
    and i3 (s1n_s0_d1, s1n, s0n, D[1]);
    and i4 (s1_s0n_d2, s1n, s0n, D[2]);
    and i5 (s1_s0_d3, s1n, s0n, D[3]);
    or i6 (Y, s1n_s0n_d0, s1n_s0_d1, s1_s0n_d2, s1_s0_d3);

endmodule