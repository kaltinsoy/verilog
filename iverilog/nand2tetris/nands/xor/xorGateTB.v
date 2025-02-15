module xorGateTB();
    reg A_i, B_i;
    wire F_o;

xorGate uut(
    .A_i(A_i),
    .B_i(B_i),
    .F_o(F_o)
);

initial begin
    $dumpfile("xorGate.vcd");
    $dumpvars;
    A_i = 1'b0; B_i = 1'b0; #10;
    A_i = 1'b0; B_i = 1'b1; #10;
    A_i = 1'b1; B_i = 1'b0; #10;
    A_i = 1'b1; B_i = 1'b1; #10;
    $finish;
end

endmodule
