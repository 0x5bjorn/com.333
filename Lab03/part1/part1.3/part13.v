module part13(en, s0, s1, s2, d0, d1, d2, d3, d4, d5, d6, d7, q);

input en, s0, s1, s2;
input d0, d1, d2, d3, d4, d5, d6, d7;
output q;

assign q = en ? ( s2 ? (s1 ? (s0 ? d7 : d6) : (s0 ? d5 : d4)) : (s1 ? (s0 ? d3 : d2) : (s0 ? d1 : d0)) ) : 0;

endmodule