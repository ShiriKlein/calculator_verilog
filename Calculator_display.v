module Calculator_display (
	input [9:0] data_in, 
	input [1:0] key,
	output [11:0] data_out
);

	wire [4:0] data_in_A;
	wire [4:0] data_in_B;
	wire [5:0] data_in_A_dvd;
	wire [3:0] data_in_B_dvd;
	
	wire [11:0] data_out_add_sub;
	wire [11:0] data_out_mul;
	wire [5:0] data_out_s;
	wire [5:0] data_out_r;
		
	wire ctrl;
	wire mux_select;
	wire [11:0]tmpdvd;
	
	assign data_out_add_sub[11:6]=6'b000000;
	assign data_out_mul[11:10]=2'b00;
	
	assign data_in_B=data_in[4:0];
	assign data_in_A=data_in[9:5];
	assign data_in_A_dvd=data_in[9:4];
	assign data_in_B_dvd=data_in[3:0];

	assign ctrl=key[0];
	assign mux_select=key[0]&key[1];
	
	assign tmpdvd[5:0]=data_out_r;

	assign tmpdvd[11:6]=data_out_s;
	
	Adder_5_bit_p_m add_sub0(.A(data_in_A),.B(data_in_B),.Cin(ctrl),.mux_select(mux_select),.Sum(data_out_add_sub),.Cout(data_out_add_sub[5])); //add_Sub
	multiplyer Mul0 (.A(data_in_A), .B(data_in_B), .S(data_out_mul[9:0])); //mul
	divider1 Div (.A(data_in_A_dvd), .B(data_in_B_dvd), .control(ctrl), .S(data_out_s), .R(data_out_r)); //div
	mux_12bit_1 mux0(.Add_Sub(data_out_add_sub),.mul(data_out_mul),.dvd(tmpdvd),.sel(key),.dout(data_out));	

	
endmodule
