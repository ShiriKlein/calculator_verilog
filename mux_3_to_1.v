module mux_3_to_1(
input Add_Sub,mul,dvd,
input [1:0]sel,
output dout
);

wire res1;

Mux_2_to_1 mux1(.A(mul),.B(dvd),.Select(sel[0]),.S(res1));
Mux_2_to_1 mux2(.A(Add_Sub),.B(res1),.Select(sel[1]),.S(dout));


endmodule
