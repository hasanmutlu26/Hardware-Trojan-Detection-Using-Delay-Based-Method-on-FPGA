module HightoLow(result, fin, clk);
input clk;

output [31:0] result;
output fin;

wire pathInput, pathResult, ld_reg;

HightoLow_control control(pathInput, ld_reg, fin, pathResult, clk);
delay_datapath datapath(result, pathResult, ld_reg, pathInput, clk);


endmodule
