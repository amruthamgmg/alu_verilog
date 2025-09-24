module alu#(parameter N=4)(a,b,oper,result,zero,overflow,negative,carry);
 input [N-1:0]a,b;
 input  [2:0]oper;
 output reg[N-1:0]result;
 //status flags
 output reg zero,overflow,negative,carry;
 reg [N:0]temp;
   always@(*)begin
     result={N{1'b0}};
	 carry=1'b0;
	 overflow=1'b0;
	   case(oper)
	     3'b000:begin 
		   temp=a+b; //Addition
		   result=temp[N-1:0];
           carry=temp[N];
		   overflow=(~a[N-1]&~b[N-1]&result[N-1])|(a[N-1] & b[N-1]&~result[N-1]);   
		   end
	     3'b001:begin 
		   temp=a-b; //subtraction
		   result=temp[N-1:0];
           carry=temp[N];
           overflow=(a[N-1]&~b[N-1]&~result[N-1])|(~a[N-1]&b[N-1]&result[N-1]);
		  		   end
         3'b010:result=a/b; //division
         3'b011:result=a%b; //modulus
         3'b100:result=a<<b; //left shift
         3'b101:result=a>>b; //Right shift
         3'b110:result=a&b; //bitwise AND
         3'b111:result=a|b; //bitwise OR
	   endcase
	   zero=(result=={N{1'b0}});
	   negative=result[N-1];
    end
endmodule
