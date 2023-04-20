module Mux_res_dvd ( 
input [11:0]res,
input [1:0]Select,
output [3:0] H0,H1,H2,H3
);
wire [11:0]calc_tmp;
wire tmp_sub_control;
wire Sel;
assign Sel=Select[0]&Select[1];
assign tmp_sub_control=~((Select[0]) & (~Select[1]));
assign calc_tmp[11:6]=res[11:6];
assign calc_tmp[5]=tmp_sub_control&res[5];
assign calc_tmp[4:0]=res[4:0];

wire [3:0] A0, A1, A2;
wire [3:0] R0, R1, S2, S3;

assign A0 = calc_tmp[3:0];
assign A1 = calc_tmp[7:4];
assign A2 = calc_tmp[11:8];

assign R1 = {2'b0, calc_tmp[5:4]};
assign R0 = calc_tmp[3:0];

assign S2 = calc_tmp[9:6];
assign S3 = {2'b0, calc_tmp[11:10]};

Mux_4bit mux_dvd0 (.A(A0), .dvd(R0),.Select(Sel),.S(H0));
Mux_4bit mux_dvd1 (.A(A1), .dvd(R1),.Select(Sel),.S(H1));
Mux_4bit mux_dvd2 (.A(A2), .dvd(S2),.Select(Sel),.S(H2));
Mux_4bit mux_dvd3 (.A(4'b0000), .dvd(S3),.Select(Sel),.S(H3));

endmodule
