module tff_x2(
input[1:0]key,
input clk,rst,
output [1:0]user_select
);


t_ff tff0 (.T(~key[0]), .CLK(clk), .RST(rst), .Q(user_select[0]), .Qbar());
t_ff tff1 (.T(~key[1]), .CLK(clk), .RST(rst), .Q(user_select[1]), .Qbar());

endmodule
