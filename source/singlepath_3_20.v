module singlepath_3_20(pathResult, pathInput);
input pathInput;
output pathResult;

(* keep = 1 *) wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19;

singlepath_3 p0(w0, pathInput, 1'b1, 1'b0);
singlepath_3 p1(w1, w0, 1'b1, 1'b0);
singlepath_3 p2(w2, w1, 1'b1, 1'b0);
singlepath_3 p3(w3, w2, 1'b1, 1'b0);
singlepath_3 p4(w4, w3, 1'b1, 1'b0);
singlepath_3 p5(w5, w4, 1'b1, 1'b0);
singlepath_3 p6(w6, w5, 1'b1, 1'b0);
singlepath_3 p7(w7, w6, 1'b1, 1'b0);
singlepath_3 p8(w8, w7, 1'b1, 1'b0);
singlepath_3 p9(w9, w8, 1'b1, 1'b0);
singlepath_3 p10(w10, w9, 1'b1, 1'b0);
singlepath_3 p11(w11, w10, 1'b1, 1'b0);
singlepath_3 p12(w12, w11, 1'b1, 1'b0);
singlepath_3 p13(w13, w12, 1'b1, 1'b0);
singlepath_3 p14(w14, w13, 1'b1, 1'b0);
singlepath_3 p15(w15, w14, 1'b1, 1'b0);
singlepath_3 p16(w16, w15, 1'b1, 1'b0);
singlepath_3 p17(w17, w16, 1'b1, 1'b0);
singlepath_3 p18(w18, w17, 1'b1, 1'b0);
singlepath_3 p19(pathResult, w18, 1'b1, 1'b0);

endmodule
