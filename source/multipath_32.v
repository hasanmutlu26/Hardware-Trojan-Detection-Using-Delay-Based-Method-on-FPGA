module multipath_32(result, fin, SW, clk250);
input clk250;
input [4:0] SW;
output reg fin;
output reg [31:0] result;
wire [31:0] result0, result1, result2, result3, result4, result5, result6, result7, result8, result9, result10, result11, result12, result13, result14, result15, result16, result17, result18, result19, result20, result21, result22, result23, result24, result25, result26, result27, result28, result29, result30, result31;
wire fin0, fin1, fin2, fin3, fin4, fin5, fin6, fin7, fin8, fin9, fin10, fin11, fin12, fin13, fin14, fin15, fin16, fin17, fin18, fin19, fin20, fin21, fin22, fin23, fin24, fin25, fin26, fin27, fin28, fin29, fin30, fin31;

LowtoHigh htl0(result0, fin0, clk250);
LowtoHigh htl1(result1, fin1, clk250);
LowtoHigh htl2(result2, fin2, clk250);
LowtoHigh htl3(result3, fin3, clk250);
LowtoHigh htl4(result4, fin4, clk250);
LowtoHigh htl5(result5, fin5, clk250);
LowtoHigh htl6(result6, fin6, clk250);
LowtoHigh htl7(result7, fin7, clk250);
LowtoHigh htl8(result8, fin8, clk250);
LowtoHigh htl9(result9, fin9, clk250);
LowtoHigh htl10(result10, fin10, clk250);
LowtoHigh htl11(result11, fin11, clk250);
LowtoHigh htl12(result12, fin12, clk250);
LowtoHigh htl13(result13, fin13, clk250);
LowtoHigh htl14(result14, fin14, clk250);
LowtoHigh htl15(result15, fin15, clk250);
LowtoHigh htl16(result16, fin16, clk250);
LowtoHigh htl17(result17, fin17, clk250);
LowtoHigh htl18(result18, fin18, clk250);
LowtoHigh htl19(result19, fin19, clk250);
LowtoHigh htl20(result20, fin20, clk250);
LowtoHigh htl21(result21, fin21, clk250);
LowtoHigh htl22(result22, fin22, clk250);
LowtoHigh htl23(result23, fin23, clk250);
LowtoHigh htl24(result24, fin24, clk250);
LowtoHigh htl25(result25, fin25, clk250);
LowtoHigh htl26(result26, fin26, clk250);
LowtoHigh htl27(result27, fin27, clk250);
LowtoHigh htl28(result28, fin28, clk250);
LowtoHigh htl29(result29, fin29, clk250);
LowtoHigh htl30(result30, fin30, clk250);
LowtoHigh htl31(result31, fin31, clk250);


always @(posedge clk250)
	begin
	if(SW == 5'b00000) begin
			  result <= result0;
			  fin <= fin0;
	end
	if(SW == 5'b00001) begin
			  result <= result1;
			  fin <= fin1;
	end
	if(SW == 5'b00010) begin
			  result <= result2;
			  fin <= fin2;
	end
	if(SW == 5'b00011) begin
			  result <= result3;
			  fin <= fin3;
	end
	if(SW == 5'b00100) begin
			  result <= result4;
			  fin <= fin4;
	end
	if(SW == 5'b00101) begin
			  result <= result5;
			  fin <= fin5;
	end
	if(SW == 5'b00110) begin
			  result <= result6;
			  fin <= fin6;
	end
	if(SW == 5'b00111) begin
			  result <= result7;
			  fin <= fin7;
	end
	if(SW == 5'b01000) begin
			  result <= result8;
			  fin <= fin8;
	end
	if(SW == 5'b01001) begin
			  result <= result9;
			  fin <= fin9;
	end
	if(SW == 5'b01010) begin
			  result <= result10;
			  fin <= fin10;
	end
	if(SW == 5'b01011) begin
			  result <= result11;
			  fin <= fin11;
	end
	if(SW == 5'b01100) begin
			  result <= result12;
			  fin <= fin12;
	end 
	if(SW == 5'b01101) begin
			  result <= result13;
			  fin <= fin13;
	end
	if(SW == 5'b01110) begin
			  result <= result14;
			  fin <= fin14;
	end
	if(SW == 5'b01111) begin
			  result <= result15;
			  fin <= fin15;
	end
	if(SW == 5'b10000) begin
			  result <= result16;
			  fin <= fin16;
	end
	if(SW == 5'b10001) begin
			  result <= result17;
			  fin <= fin17;
	end
	if(SW == 5'b10010) begin
			  result <= result18;
			  fin <= fin18;
	end
	if(SW == 5'b10011) begin
			  result <= result19;
			  fin <= fin19;
	end
	if(SW == 5'b10100) begin
			  result <= result20;
			  fin <= fin20;
	end
	if(SW == 5'b10101) begin
			  result <= result21;
			  fin <= fin21;
	end
	if(SW == 5'b10110) begin
			  result <= result22;
			  fin <= fin22;
	end
	if(SW == 5'b10111) begin
			  result <= result23;
			  fin <= fin23;
	end
	if(SW == 5'b11000) begin
			  result <= result24;
			  fin <= fin24;
	end
	if(SW == 5'b11001) begin
			  result <= result25;
			  fin <= fin25;
	end
	if(SW == 5'b11010) begin
			  result <= result26;
			  fin <= fin26;
	end
	if(SW == 5'b11011) begin
			  result <= result27;
			  fin <= fin27;
	end
	if(SW == 5'b11100) begin
			  result <= result28;
			  fin <= fin28;
	end
	if(SW == 5'b11101) begin
			  result <= result29;
			  fin <= fin29;
	end
	if(SW == 5'b11110) begin
			  result <= result30;
			  fin <= fin30;
	end
	if(SW == 5'b11111) begin
			  result <= result31;
			  fin <= fin31;
	end
end

endmodule

