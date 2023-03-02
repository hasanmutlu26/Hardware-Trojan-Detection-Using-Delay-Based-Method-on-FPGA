module singlepath_1_20(pathResult, pathInput);
input pathInput;
output pathResult;

(* keep = 1 *) wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19;

singlepath_plode p0(w0, pathInput, 1'b1, 1'b0);
singlepath_plode p1(w1, w0, 1'b1, 1'b0);
singlepath_plode p2(w2, w1, 1'b1, 1'b0);
singlepath_plode p3(w3, w2, 1'b1, 1'b0);
singlepath_plode p4(w4, w3, 1'b1, 1'b0);
singlepath_plode p5(w5, w4, 1'b1, 1'b0);
singlepath_plode p6(w6, w5, 1'b1, 1'b0);
singlepath_plode p7(w7, w6, 1'b1, 1'b0);
singlepath_plode p8(w8, w7, 1'b1, 1'b0);
singlepath_plode p9(w9, w8, 1'b1, 1'b0);
singlepath_plode p10(w10, w9, 1'b1, 1'b0);
singlepath_plode p11(w11, w10, 1'b1, 1'b0);
singlepath_plode p12(w12, w11, 1'b1, 1'b0);
singlepath_plode p13(w13, w12, 1'b1, 1'b0);
singlepath_plode p14(w14, w13, 1'b1, 1'b0);
singlepath_plode p15(w15, w14, 1'b1, 1'b0);
singlepath_plode p16(w16, w15, 1'b1, 1'b0);
singlepath_plode p17(w17, w16, 1'b1, 1'b0);
singlepath_plode p18(w18, w17, 1'b1, 1'b0);
singlepath_plode p19(pathResult, w18, 1'b1, 1'b0);

endmodule
