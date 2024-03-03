module tb;
  reg[2:0]  a,b;
  reg sel;
  wire[2:0] y;
  
  mux_2_1 i0(.a(a),.b(b),.sel(sel),.y(y));
  
  initial begin 
    
    #10 $display("a=%0b b=%0b sel=%0b y=%0b",a,b,sel,y);
    
    #10 a=3'b110;b=3'b111;sel=1'b0;
    #10 $display("a=%0b b=%0b sel=%0b y=%0b",a,b,sel,y);
    
    #10 a=3'b010;b=3'b101;sel=1'b1;
    #10 $display("a=%0b b=%0b sel=%0b y=%0b",a,b,sel,y);
    
  end
  
endmodule