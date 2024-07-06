`timescale 1ns/10ps

module project_tb;

reg A0,A1,A2,A3,B0,B1,B2,B3;
wire P0,P1 ,P2, P3, P4, P5, P6, C5;
integer i;
integer k;
project UUT (A0,A1,A2,A3,B0,B1,B2,B3,P0, P1, P2, P3, P4, P5 ,P6, C5); 

initial
    begin
        $dumpfile("project_tb.vcd");
        $dumpvars(0,project_tb);
	
		k=0;
        A0=0;
        A1=0; 
        A2=0; 
        A3=0; 
        B0=0; 
        B1=0; 
        B2=0; 
        B3=0;
        
    end

initial
    begin
        
        for( i = 1; i<=256;i = i+1)begin
        	#10
        	k = i;
        	A0=k%2;
        	k = k/2;
       		A1=k%2; 
       		k = k/2;
       		A2=k%2; 
       		k = k/2;
       		A3=k%2; 
       		k = k/2;
        	B0=k%2; 
        	k = k/2;
        	B1=k%2; 
        	k = k/2;
        	B2=k%2; 
        	k = k/2;
        	B3=k%2; 
        	
	end
    end

endmodule
