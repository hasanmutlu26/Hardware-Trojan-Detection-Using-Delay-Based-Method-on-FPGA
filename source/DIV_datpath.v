module DIV_datpath(resultDiv, resultMod, b_less, A, B, ld, mux, clk);
input [31:0] A;
input [31:0] B;
input ld, mux, clk;
output b_less;
output [31:0] resultDiv, resultMod;

wire [31:0] wCount, wRes, wAdd;

wire [31:0] mux_out, sub_out, cMux_out;

_32bit_REG g0(wRes, mux_out, ld, clk);

_32bit_2x1MUX g1(mux_out, A, sub_out, mux);

_32bit_SUB g2(sub_out, wRes, B);

_32bit_SLT g3(b_less, wRes, B);

_32bit_OR g32(resultMod, wRes, 32'd0);

_32bit_2x1MUX g5(cMux_out, 32'b0, wAdd, mux);

_32bit_REG g6(wCount, cMux_out, ld, clk);

_32bit_ADD g7(wAdd, wCount, 32'b0, 1'b1);

_32bit_OR g8(resultDiv, wCount, 32'd0);




endmodule
