module andGate (
   input  wire A_i,
   input  wire B_i,
   output wire Y_o
);

   wire nand_out;

   nand nand1 (nand_out, A_i, B_i);
   nand nand2 (Y_o, nand_out, nand_out);

endmodule
