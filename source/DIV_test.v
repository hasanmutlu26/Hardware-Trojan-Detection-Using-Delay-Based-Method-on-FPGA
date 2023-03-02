module DIV_test(resultMod, clk);
output [31:0] resultMod;
input clk;

//=======================================================
//  REG/WIRE declarations
//=======================================================

wire [31:0] resDiv, resMod, wReg;
wire div_fin;

//=======================================================
//  Structural coding
//=======================================================

_32bit_DIV g0(resDiv , resMod, div_fin, 32'b00000000000000000000010011110001, 32'b00000000000000000000000000001010, 1'b1, clk);

_32bit_REG g1(wReg, resMod, div_fin, clk);

_32bit_OR g2(resultMod, wReg, 32'd0);

endmodule
