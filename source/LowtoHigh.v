module LowtoHigh(result, fin, CLOCK_50);
input CLOCK_50;

output [31:0] result;
output fin;

wire pathInput, pathResult, ld_reg;

LowtoHigh_control control(pathInput, ld_reg, fin, pathResult, CLOCK_50);
delay_datapath datapath(result, pathResult, ld_reg, pathInput, CLOCK_50);


endmodule
