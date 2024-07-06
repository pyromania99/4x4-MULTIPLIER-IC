`timescale 1ns/10ps
module HA (A,B,Sum,Carry);
input A,B;
output Sum,Carry;
	xor (Sum,A,B);
	and (Carry,A,B);
endmodule

module FA (A,B,C,Sum,Carry);
input A,B,C;
output Sum,Carry;
	HA ha1(A,B,S1,C1);
	HA ha2(A,B,Sum,C2);
	or (Carry,C2,C1);
endmodule


module project (A0,A1,A2,A3,B0,B1,B2,B3,P0,P1,P2,P3,P4,P5,P6,C5);

input A0,A1,A2,A3,B0,B1,B2,B3;
output P0,P1,P2,P3,P4,P5,P6,C5;
wire l26,l43 ,l51,in1 ,l27 ,l61;
and(in1,A3,B3);
and(in2,A3,B2);
and(in3,A2,B3);
and(in4,A1,B3);
and(in5,A3,B1);
and(in6,A2,B2);
and(in7,A2,B1);
and(in8,A3,B0);	
and(in9,A0,B3);
and(in10,A1,B2);	
and(in11,A1,B1);
and(in12,A2,B0);
and(in13,A0,B2);
and(in14,A1,B0);
and(in15,A0,B1);
and(P0,A0,B0);
 
HA ha1(in15,in14,P1 ,l21);
HA ha2(in12,in11,l22,l23);
FA fa1(l22 ,in13,l21,P2 ,l31);
FA fa2(l24 ,in10,l23,l32,l33);
FA fa3(in9 ,l32 ,l31,P3 ,l41);
HA ha3(in7 ,in8 ,l24,l25);
FA fa4(in5 ,in6 ,l25,l34,l35);
FA fa5(in2 ,in3 ,l35,l26,l27);
FA fa6(in4 ,l34 ,l33,l42,l43);
HA ha4(l42 ,l41 ,P4 ,l51);
FA fa7(l26 ,l43 ,l51,P5,l61);
FA fa8(in1 ,l27 ,l61,P6,C5); 
endmodule



