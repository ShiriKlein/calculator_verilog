module t_ff(T,CLK,RST,Q,Qbar);
output Q,Qbar;
input  T,CLK,RST;
reg  Q;
always @(posedge CLK)

begin // positive-edge triggered
if (!RST) // synchronous reset, active low
Q <= 1'b0;
else
Q <= T^Q;
end
assign Qbar = ~ Q ;
endmodule
