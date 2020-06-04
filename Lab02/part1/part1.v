module part1(x, y, z, w, f1, f2, f3, f4, f5, f6);

input x, y, z, w; 
output f1, f2, f3, f4, f5, f6;

assign f1 = (x&~y) | (y&z);
assign f2 = (x&y) | (~x&~y&z);
assign f3 = ((x|~y)&z) | (~x&y&~z);
assign f4 = (x&z) | (~y&z) | (~x&y&~z);
assign f5 = (x|~y|~z) & (~x|z) & (y|z);
assign f6 = ~( ~(~(x&~y)&z) | ~(y|~x|~z) | ~(x|w) );

endmodule