module delay(result, fin, in, CLOCK_50);
input CLOCK_50, in;
output [31:0] result;
output fin;

wire ld, pathResult;

delay_control dc(ld, fin, pathResult, CLOCK_50);
delay_datapath dd(result, pathResult, ld, in, CLOCK_50);


endmodule
