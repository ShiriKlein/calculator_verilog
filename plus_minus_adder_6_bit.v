module plus_minus_Adder_6_bit(
input[5:0]A,B,
input control,mux_select,
output [5:0] Sum, Cout
);

wire ctrl;
wire [5:0]tmp_cout;
reg M_cout;


Adder_6_bit A_6_b ( 
.A(A),.B(B),.Cin(control),.mux_select(mux_select),.Sum(Sum),.Cout(tmp_cout) 
);

 assign Cout[4:0]=tmp_cout[4:0];
  assign Cout[5]=M_cout;


always@ (control) begin
	case (control)
		1'b1: M_cout=~tmp_cout[5];
		1'b0 :M_cout=tmp_cout[5];
	endcase 
end

endmodule
