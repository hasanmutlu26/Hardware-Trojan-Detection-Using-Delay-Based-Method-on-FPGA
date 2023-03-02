module _32bit_DIV(resultDiv, resultMod, div_fin, A, B, start, clk);
output [31:0] resultDiv, resultMod;
output div_fin;
input [31:0] A;
input [31:0] B;
input start, clk;

wire wLd, wMux, wB_less;

DIV_control g0(wLd, wMux, div_fin, start, wB_less, clk);
DIV_datpath g1(resultDiv, resultMod, wB_less, A, B, wLd, wMux, clk);



endmodule
