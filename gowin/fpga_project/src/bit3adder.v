module bit3adder(
    input [2:0] A,
    input [2:0] B,
    output [3:0] C
);

wire c1,c2,c3,c4;

halfadder ha0(A[0], B[0], C[0], c1);
fulladder fa0(A[1], B[1], c1, C[1], c2);
fulladder fa1(A[2], B[2], c2, C[2], C[3]);

endmodule