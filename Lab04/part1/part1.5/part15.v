module part15(clk, rst, rd, wr, EMPTY, FULL, d, q);

input clk, rst, rd, wr;
output  EMPTY, FULL;
input [7:0] d;
output reg [7:0] q;
reg [7:0] mem [0:7];

reg [3:0] Count = 0;
reg [3:0] readCounter = 0, writeCounter = 0; 

assign EMPTY = (Count==0)? 1 : 0; 
assign FULL = (Count==8)? 1 : 0; 

always@(posedge clk)
 begin

  if(rst)
   begin
    readCounter = 0; 
    writeCounter = 0; 
   end
  else if (rd && ~EMPTY)
   begin 
    q = mem[readCounter]; 
    readCounter = readCounter+1;
    Count = Count - 1;
   end
  else if (wr && ~FULL)
   begin
    mem[writeCounter] = d; 
    writeCounter = writeCounter+1;
    Count = Count + 1; 
   end 

  if (writeCounter==8) 
   writeCounter=0; 
  else if (readCounter==8) 
   readCounter=0;

 end

endmodule
