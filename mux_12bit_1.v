module mux_12bit_1(
input [11:0] Add_Sub,mul,dvd,
input [1:0]sel,
output [11:0]dout
);

mux_3_to_1 mux0(.Add_Sub(Add_Sub[0]),.mul(mul[0]),.dvd(dvd[0]),.sel(sel),.dout(dout[0]));
mux_3_to_1 mux1(.Add_Sub(Add_Sub[1]),.mul(mul[1]),.dvd(dvd[1]),.sel(sel),.dout(dout[1]));
mux_3_to_1 mux2(.Add_Sub(Add_Sub[2]),.mul(mul[2]),.dvd(dvd[2]),.sel(sel),.dout(dout[2]));
mux_3_to_1 mux3(.Add_Sub(Add_Sub[3]),.mul(mul[3]),.dvd(dvd[3]),.sel(sel),.dout(dout[3]));
mux_3_to_1 mux4(.Add_Sub(Add_Sub[4]),.mul(mul[4]),.dvd(dvd[4]),.sel(sel),.dout(dout[4]));
mux_3_to_1 mux5(.Add_Sub(Add_Sub[5]),.mul(mul[5]),.dvd(dvd[5]),.sel(sel),.dout(dout[5]));
mux_3_to_1 mux6(.Add_Sub(Add_Sub[6]),.mul(mul[6]),.dvd(dvd[6]),.sel(sel),.dout(dout[6]));
mux_3_to_1 mux7(.Add_Sub(Add_Sub[7]),.mul(mul[7]),.dvd(dvd[7]),.sel(sel),.dout(dout[7]));
mux_3_to_1 mux8(.Add_Sub(Add_Sub[8]),.mul(mul[8]),.dvd(dvd[8]),.sel(sel),.dout(dout[8]));
mux_3_to_1 mux9(.Add_Sub(Add_Sub[9]),.mul(mul[9]),.dvd(dvd[9]),.sel(sel),.dout(dout[9]));
mux_3_to_1 mux10(.Add_Sub(Add_Sub[10]),.mul(mul[10]),.dvd(dvd[10]),.sel(sel),.dout(dout[10]));
mux_3_to_1 mux11(.Add_Sub(Add_Sub[11]),.mul(mul[11]),.dvd(dvd[11]),.sel(sel),.dout(dout[11]));


endmodule
