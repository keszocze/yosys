
module TB_GND(ok);
wire MY_G, XL_G;
MY_GND MY(.G(MY_G));
XL_GND XL(.G(XL_G));
output ok = MY_G == XL_G;
endmodule

module TB_INV(ok, I);
input I;
wire MY_O, XL_O;
MY_INV MY(.O(MY_O), .I(I));
XL_INV XL(.O(XL_O), .I(I));
output ok = MY_O == XL_O;
endmodule

module TB_LUT1(ok, I0);
input I0;
wire [1:0] MY_O, XL_O;
genvar i;
generate for (i=0; i<2; i=i+1) begin:V
	MY_LUT1 #(.INIT(i)) MY(.O(MY_O[i]), .I0(I0));
	XL_LUT1 #(.INIT(i)) XL(.O(XL_O[i]), .I0(I0));
end endgenerate
output ok = MY_O == XL_O;
endmodule

module TB_LUT2(ok, I0, I1);
input I0, I1;
wire [3:0] MY_O, XL_O;
genvar i;
generate for (i=0; i<4; i=i+1) begin:V
	MY_LUT2 #(.INIT(i)) MY(.O(MY_O[i]), .I0(I0), .I1(I1));
	XL_LUT2 #(.INIT(i)) XL(.O(XL_O[i]), .I0(I0), .I1(I1));
end endgenerate
output ok = MY_O == XL_O;
endmodule

module TB_LUT3(ok, I0, I1, I2);
input I0, I1, I2;
wire [7:0] MY_O, XL_O;
genvar i;
generate for (i=0; i<8; i=i+1) begin:V
	MY_LUT3 #(.INIT(i)) MY(.O(MY_O[i]), .I0(I0), .I1(I1), .I2(I2));
	XL_LUT3 #(.INIT(i)) XL(.O(XL_O[i]), .I0(I0), .I1(I1), .I2(I2));
end endgenerate
output ok = MY_O == XL_O;
endmodule

module TB_LUT4(ok, I0, I1, I2, I3);
input I0, I1, I2, I3;
wire [15:0] MY_O, XL_O;
genvar i;
generate for (i=0; i<16; i=i+1) begin:V
	MY_LUT4 #(.INIT(i)) MY(.O(MY_O[i]), .I0(I0), .I1(I1), .I2(I2), .I3(I3));
	XL_LUT4 #(.INIT(i)) XL(.O(XL_O[i]), .I0(I0), .I1(I1), .I2(I2), .I3(I3));
end endgenerate
output ok = MY_O == XL_O;
endmodule

module TB_LUT5(ok, I0, I1, I2, I3, I4);
input I0, I1, I2, I3, I4;
wire [31:0] MY_O, XL_O;
genvar i;
generate for (i=0; i<32; i=i+1) begin:V
	MY_LUT5 #(.INIT(i)) MY(.O(MY_O[i]), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4));
	XL_LUT5 #(.INIT(i)) XL(.O(XL_O[i]), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4));
end endgenerate
output ok = MY_O == XL_O;
endmodule

module TB_LUT6(ok, I0, I1, I2, I3, I4, I5);
input I0, I1, I2, I3, I4, I5;
wire [63:0] MY_O, XL_O;
genvar i;
generate for (i=0; i<64; i=i+1) begin:V
	MY_LUT6 #(.INIT(i)) MY(.O(MY_O[i]), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5));
	XL_LUT6 #(.INIT(i)) XL(.O(XL_O[i]), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5));
end endgenerate
output ok = MY_O == XL_O;
endmodule

module TB_MUXCY(ok, CI, DI, S);
input CI, DI, S;
wire MY_O, XL_O;
MY_MUXCY MY(.O(MY_O), .CI(CI), .DI(DI), .S(S));
XL_MUXCY XL(.O(XL_O), .CI(CI), .DI(DI), .S(S));
output ok = MY_O == XL_O;
endmodule

module TB_MUXF7(ok, I0, I1, S);
input I0, I1, S;
wire MY_O, XL_O;
MY_MUXF7 MY(.O(MY_O), .I0(I0), .I1(I1), .S(S));
XL_MUXF7 XL(.O(XL_O), .I0(I0), .I1(I1), .S(S));
output ok = MY_O == XL_O;
endmodule

module TB_VCC(ok);
wire MY_P, XL_P;
MY_VCC MY(.P(MY_P));
XL_VCC XL(.P(XL_P));
output ok = MY_P == XL_P;
endmodule

module TB_XORCY(ok, CI, LI);
input CI, LI;
wire MY_O, XL_O;
MY_XORCY MY(.O(MY_O), .CI(CI), .LI(LI));
XL_XORCY XL(.O(XL_O), .CI(CI), .LI(LI));
output ok = MY_O == XL_O;
endmodule

