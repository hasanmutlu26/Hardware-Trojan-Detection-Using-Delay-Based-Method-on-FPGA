module multipath(result, fin, SW, clk250);
input clk250;
input [2:0] SW;
output reg fin;
output reg [31:0] result;
wire [31:0] result1, result2, result3, result4, result5, result6, result7, result8;
wire fin1, fin2, fin3, fin4, fin5, fin6, fin7, fin8;

LowtoHigh htl1(result1, fin1, clk250);
LowtoHigh htl2(result2, fin2, clk250);
LowtoHigh htl3(result3, fin3, clk250);
LowtoHigh htl4(result4, fin4, clk250);
LowtoHigh htl5(result5, fin5, clk250);
LowtoHigh htl6(result6, fin6, clk250);
LowtoHigh htl7(result7, fin7, clk250);
LowtoHigh htl8(result8, fin8, clk250);



always @(posedge clk250)
begin
	if(SW == 3'b000) begin
		result <= result1;
		fin <= fin1;
	end
	
	if(SW == 3'b001) begin
		result <= result2;
		fin <= fin2;
	end
	
	if(SW == 3'b010) begin
		result <= result3;
		fin <= fin3;
	end
	
	if(SW == 3'b011) begin
		result <= result4;
		fin <= fin4;
	end
	
	if(SW == 3'b100) begin
		result <= result5;
		fin <= fin5;
	end
	
	if(SW == 3'b101) begin
		result <= result6;
		fin <= fin6;
	end
	
	if(SW == 3'b110) begin
		result <= result7;
		fin <= fin7;
	end
	
	if(SW == 3'b111) begin
		result <= result8;
		fin <= fin8;
	end
	
	
end


endmodule