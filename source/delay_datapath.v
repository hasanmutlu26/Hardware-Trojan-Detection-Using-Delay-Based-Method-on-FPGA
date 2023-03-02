module delay_datapath(result, pathResult, ld, pathInput, clk);
input ld, clk, pathInput;
output [31:0] result;
output pathResult;

wire [31:0] wAddr;


//singlepath_1_5n path(pathResult, ~pathInput);
//singlepath_1_10 path(pathResult, pathInput);
//singlepath_1_20 path(pathResult, pathInput);
//singlepath_1_50 path(pathResult, pathInput);
//singlepath_1_100 path(pathResult, pathInput);

//singlepath_2_5n path(pathResult, ~pathInput);
//singlepath_2_10 path(pathResult, pathInput);
//singlepath_2_20 path(pathResult, pathInput);
//singlepath_2_50 path(pathResult, pathInput);
//singlepath_2_100 path(pathResult, pathInput);

//singlepath_3_5 path(pathResult, pathInput);
//singlepath_3_10 path(pathResult, pathInput);
singlepath_3_20 path(pathResult, pathInput);
//singlepath_3_50 path(pathResult, pathInput);
//singlepath_3_100 path(pathResult, pathInput);

//spypath_3_1_5n path(pathResult, ~pathInput);
//spypath_3_1_10 path(pathResult, pathInput);
//spypath_3_1_20 path(pathResult, pathInput);
//spypath_3_1_50 path(pathResult, pathInput);
//spypath_3_1_100 path(pathResult, pathInput);

//spypath_3_2_5n path(pathResult, ~pathInput);
//spypath_3_2_10 path(pathResult, pathInput);
//spypath_3_2_20 path(pathResult, pathInput);
//spypath_3_2_50 path(pathResult, pathInput);
//spypath_3_2_100 path(pathResult, pathInput);

//not3_33_5n path(pathResult, ~pathInput);
//not3_33_10 path(pathResult, pathInput);
//not3_33_20 path(pathResult, pathInput);
//not3_33_50 path(pathResult, pathInput);
//not3_33_100 path(pathResult, pathInput);



_32bit_REG r(result, wAddr, ld, clk);
_32bit_ADD a(wAddr, result, 32'b0, 1'b1);


endmodule
