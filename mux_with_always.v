parameter data_width =2;
module mux_2_1(input[data_width:0] a,b,
               input sel ,output reg [data_width:0] y);
  
  always @(a,b,sel)
 begin 
 
  if(sel)begin
      y=b;
    end else begin
      y=a;
    end

 end
endmodule
