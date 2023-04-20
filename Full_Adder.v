module Full_Adder (A,B,Cin,S,Cout);
input A, B,Cin;
output S, Cout;

//internal wires
wire ha1_sum;
wire ha1_carry, ha2_carry;

//instance HA1
Half_Adder Ha1(
	.A(A),
	.B(B),
	.Sum(ha1_sum),
	.Carry(ha1_carry)
);

//instance HA2
Half_Adder Ha2(
	.A(Cin),
	.B(ha1_sum),
	.Sum(S),
	.Carry(ha2_carry)
);

assign Cout = ha1_carry | ha2_carry;
endmodule 