module HightoLow_testbench();
wire [31:0] result;
wire fin;
wire [3:0] dec5, dec4, dec3, dec2, dec1, dec0;
reg clk;

HightoLow htl(result, fin, clk);
decimal_to_7seg dectoseg(dec5, dec4, dec3, dec2, dec1, dec0, result, fin, clk);

initial begin
clk = 0;
end

initial begin 
	forever begin
	#2000; 
	clk = ~clk;
	end 
end

endmodule
