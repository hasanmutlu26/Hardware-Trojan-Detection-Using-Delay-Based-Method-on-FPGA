module _32bit_SLT (result, A, B);
input [31:0] A, B;
output result;

wire [31:0] w1;

_32bit_SUB c0 (w1, A, B);
or(result, w1[31], 1'b0);

endmodule