module Sum4bcc (A,B,co,S);

  input [3 :0] A;
  input [3 :0] B;
  output co;
  output [3 :0] S;

  wire c1,c2,c3;
  sum1bcc s0 (.A(A[0]), .B(B[0]), .Ci(0),  .Cout(c1) ,.S(S[0]));
  sum1bcc s1 (.A(A[1]), .B(B[1]), .Ci(c1), .Cout(c2) ,.S(S[1]));
  sum1bcc s2 (.A(A[2]), .B(B[2]), .Ci(c2), .Cout(c3) ,.S(S[2]));
  sum1bcc s3 (.A(A[3]), .B(B[3]), .Ci(c3), .Cout(co) ,.S(S[3]));


endmodule