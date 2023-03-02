module decimal_to_7seg(hex5, hex4, hex3, hex2, hex1, hex0, A, start, clk);
input [31:0] A;
input start, clk;
output [3:0] hex5, hex4, hex3, hex2, hex1, hex0;

wire [31:0] wRes0, wRes1, wRes2, wRes3, wRes4, wRes5;
wire wFin0, wFin1, wFin2, wFin3, wFin4, wFin5;
wire wAnd0, wAnd1, wAnd2, wAnd3, wAnd4, wAnd5;


and(wAnd0, ~wFin0, start);
_32bit_DIV h0(wRes0, hex0, wFin0, A, 32'b1010, wAnd0, clk);

and(wAnd1, wFin0, ~wFin1);
_32bit_DIV h1(wRes1, hex1, wFin1, wRes0, 32'b1010, wAnd1, clk);

and(wAnd2, wFin1, ~wFin2);
_32bit_DIV h2(wRes2, hex2, wFin2, wRes1, 32'b1010, wAnd2, clk);

and(wAnd3, wFin2, ~wFin3);
_32bit_DIV h3(wRes3, hex3, wFin3, wRes2, 32'b1010, wAnd3, clk);

and(wAnd4, wFin3, ~wFin4);
_32bit_DIV h4(wRes4, hex4, wFin4, wRes3, 32'b1010, wAnd4, clk);

and(wAnd5, wFin4, ~wFin5);
_32bit_DIV h5(wRes5, hex5, wFin5, wRes4, 32'b1010, wAnd5, clk);




endmodule
