module not3_33(out, in);
input in;
output out;

(* keep = 1 *) wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10,
w11, w12, w13, w14, w15, w16, w17, w18, w19, w20,
w21, w22, w23, w24, w25, w26, w27, w28, w29, w30,
w31, w32;

not n0(w0, in);
not n1(w1, w0);
not n2(w2, w1);
not n3(w3, w2);
not n4(w4, w3);
not n5(w5, w4);
not n6(w6, w5);
not n7(w7, w6);
not n8(w8, w7);
not n9(w9, w8);
not n10(w10, w9);
not n11(w11, w10);
not n12(w12, w11);
not n13(w13, w12);
not n14(w14, w13);
not n15(w15, w14);
not n16(w16, w15);
not n17(w17, w16);
not n18(w18, w17);
not n19(w19, w18);
not n20(w20, w19);
not n21(w21, w20);
not n22(w22, w21);
not n23(w23, w22);
not n24(w24, w23);
not n25(w25, w24);
not n26(w26, w25);
not n27(w27, w26);
not n28(w28, w27);
not n29(w29, w28);
not n30(w30, w29);
not n31(w31, w30);
not n32(out, w31);
//not n33(out, w32);

endmodule
