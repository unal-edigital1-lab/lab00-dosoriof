`timescale 1ns / 1ps
module Sum4bcc_TB;

	//Entradas
	reg [3:0] a;
	reg [3:0] b;
	
	//Salidas
	wire Cout;
	wire [3:0] s;
	
	//Instanciar Sumador
	
	Sum4bcc uut(
	.A(a),
	.B(b),
	.co(Cout),
	.S(s));
	
	
	initial begin
		a=0;
		for (b=0;b<16;b=b+1) begin
			if(b==0)
				a=a+1;
			#5 $display("el valor de %d + %d = %d", a,b,s) ;
		end
	end
	
	initial begin: TEST_CASE
		$dumpfile("Sum4bcc_TB.vcd");
		$dumpvars(-1,uut);
		#1000 $finish;
	end

endmodule

