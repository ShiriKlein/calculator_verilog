module control_ans(
input [3:0]SW3_0,
input [1:0]select,
input calc_res_5,if_dvd,
output error
);


wire nand4,sub_key;
assign sub_key=select[0]&(~select[1]);

nand4bit nand0(.A(SW3_0),.S(nand4));
assign error=((~calc_res_5)&sub_key)|(if_dvd&nand4);

endmodule
