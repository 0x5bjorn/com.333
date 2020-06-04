module part11(clk, s, r, d, q);

input clk, s, r;
input [7:0] d;
output reg [7:0] q;

always@(posedge clk)
 begin

  if(s)
   begin
    q <= d;
   end

  else if(r)
   begin
    q <= 0;
   end

  else if(~s & ~r)
   begin
    q <= q;
   end

 end

endmodule