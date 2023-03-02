module not3_33_10(pathResult, pathInput);
input pathInput;
output pathResult;

(* keep = 1 *) wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9;

not3_33 p0(w0, pathInput);
not3_33 p1(w1, w0);
not3_33 p2(w2, w1);
not3_33 p3(w3, w2);
not3_33 p4(w4, w3);
not3_33 p5(w5, w4);
not3_33 p6(w6, w5);
not3_33 p7(w7, w6);
not3_33 p8(w8, w7);
not3_33 p9(pathResult, w8);

endmodule
