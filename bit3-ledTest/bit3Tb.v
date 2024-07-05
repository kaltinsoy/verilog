module bit3Tb();

reg [2:0] r1, r2;
wire [3:0] w1;

bit3adder uut(
    .A(r1),
    .B(r2),
    .C(w1)
);

initial begin
    $dumpfile("bit3.vcd");
    $dumpvars;

    r1 = 3'b000; r2 = 3'b111; #10;
    r1 = 3'b001; r2 = 3'b110; #10;
    r1 = 3'b010; r2 = 3'b101; #10;
    r1 = 3'b011; r2 = 3'b100; #10;
    r1 = 3'b100; r2 = 3'b011; #10;
    r1 = 3'b101; r2 = 3'b010; #10;
    r1 = 3'b110; r2 = 3'b001; #10;
    r1 = 3'b111; r2 = 3'b000; #10;

    r1 = 3'b000; r2 = 3'b000; #10;
    r1 = 3'b001; r2 = 3'b000; #10;
    r1 = 3'b010; r2 = 3'b000; #10;
    r1 = 3'b011; r2 = 3'b000; #10;
    r1 = 3'b100; r2 = 3'b000; #10;
    r1 = 3'b101; r2 = 3'b000; #10;
    r1 = 3'b110; r2 = 3'b000; #10;
    r1 = 3'b111; r2 = 3'b000; #10;
    $display("Done");
end

endmodule