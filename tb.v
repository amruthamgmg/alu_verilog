`include "rtl.v"
module tb;
 parameter N=8;
 reg [N-1:0]a,b;
 reg [2:0]oper;
 wire [N-1:0]result;
 wire zero,carry,overflow,negative;
 alu #(.N(N)) dut(.a(a),.b(b),.oper(oper),.result(result),.zero(zero),.carry(carry),.negative(negative),.overflow(overflow));
 reg [20*8-1:0]test_name;
 initial begin 
   if(!$value$plusargs("test_name=%s",test_name))
     test_name="default";
 end
 initial begin 
  case(test_name)
   "add": run_add(8'd100,8'd50);
   "sub": run_sub(8'd4,8'd5);
   "div": run_div(8'd5,8'd3);
   "mod": run_mod(8'd5,8'd3);
   "left_shift": run_left(8'b1111_0100,8'd1);
   "right_shift":run_right(8'b0000_1111,8'd1);
   "bitwise_AND":run_bitwise_AND(8'b1010_1111,8'b1111_0000);
   "bitwise_OR": run_bitwise_OR(8'b1111_0000,8'b0000_1100);
   default: $display("No valid test selected");
   endcase
 end
 task run_add(input reg [N-1:0]a_in,b_in);begin
     a=a_in;
     b=b_in; oper=3'b000;
    #1 $display("ADD: a=%0d b=%0d result=%0d Zero=%b Carry=%b overflow=%b negative=%b",a,b,result,zero,carry,overflow,negative);
    end
  endtask
 task run_sub(input reg [N-1:0]a_in,b_in);begin
      a=a_in;
      b=b_in;
  oper=3'b001; #10;
    $display("SUB: a=%0d b=%0d result=%0d Zero=%b Carry=%b overflow=%b negative=%b",a,b,result,zero,carry,overflow,negative);
    end
 endtask
 task run_div(input reg [N-1:0]a_in,b_in);begin
     a = a_in;
  b = b_in;
  oper=3'b010; #10;
    $display("DIV: a=%0d b=%0d result=%0d Zero=%b Carry=%b overflow=%b negative=%b",a,b,result,zero,carry,overflow,negative);
    end
 endtask
 task run_mod(input reg [N-1:0]a_in,b_in);begin
      a = a_in;
  b = b_in;
  oper=3'b011; #10;
    $display("MOD: a=%0d b=%0d result=%0d Zero=%b Carry=%b overflow=%b negative=%b",a,b,result,zero,carry,overflow,negative);
    end
 endtask
 task run_left(input reg [N-1:0]a_in,b_in);begin
    a = a_in;
  b = b_in;
  oper=3'b100; #10;
    $display("left_shift: a=%b b=%b result=%b Zero=%b Carry=%b overflow=%b negative=%b",a,b,result,zero,carry,overflow,negative);
    end
 endtask
 task run_right(input reg [N-1:0]a_in,b_in);begin
      a = a_in;
  b = b_in;
  oper=3'b101; #10;
    $display("right_shift: a=%b b=%b result=%b Zero=%b Carry=%b overflow=%b negative=%b",a,b,result,zero,carry,overflow,negative);
    end
 endtask
 task run_bitwise_AND(input reg [N-1:0]a_in,b_in);begin
     a = a_in;
  b = b_in;
  oper=3'b110; #10;
    $display("bitwise_AND: a=%b b=%b result=%b Zero=%b Carry=%b overflow=%b negative=%b",a,b,result,zero,carry,overflow,negative);
    end
 endtask
 task run_bitwise_OR(input reg [N-1:0]a_in,b_in);begin
     a = a_in;
  b = b_in; 
  oper=3'b111; #10;
    $display("Bitwise_OR: a=%b b=%b result=%b Zero=%b Carry=%b overflow=%b negative=%b",a,b,result,zero,carry,overflow,negative);
    end
 endtask
endmodule
