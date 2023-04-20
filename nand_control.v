module nand_control(
input[3:0] H3,H2,H1,
input if_dvd,
output offbit3,offbit2,offbit1,offbit0
);

wire tmp1,tmp2,tmp3;

nand4bit nand2(.A(H1),.S(tmp1));
nand4bit nand1(.A(H2),.S(tmp2));
nand4bit nand0(.A(H3),.S(tmp3));
assign offbit3=tmp3;
assign offbit2=tmp3&tmp2&(~if_dvd);
assign offbit1=tmp3&tmp2&tmp1&(~if_dvd);
assign offbit0=tmp1&if_dvd;

endmodule
