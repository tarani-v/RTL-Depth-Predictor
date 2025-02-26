// Title: Priority Encoder
// Aim: Write a verilog code for 8:3 priority encoder and verify the result by writing test bench which generates inputs, expected outputs , performs the check and reports error cases.
// Programmer name: Ashish Ashok Gopal, 1702005, FY MTech
// Department: Department of Electronics Engineering
// Mentor: Prof. Arati Phadke
// Department: Department of Electronics Engineering
// Date: 29/09/2017

// ***************Program starts here*************************

module PR_ENC(pinput, poutput);

	// Defining inputs and outputs
	input [7:0]pinput;			// 8-bit User Input
	output reg [2:0]poutput;	// 3-bit output

always @(pinput)
	begin
		if (pinput[7]==1'b1) poutput=3'b111;		// Highest Priority
		else if (pinput[6]==1'b1) poutput=3'b110;
		else if (pinput[5]==1'b1) poutput=3'b101;
		else if (pinput[4]==1'b1) poutput=3'b100;
		else if (pinput[3]==1'b1) poutput=3'b011;
		else if (pinput[2]==1'b1) poutput=3'b010;
		else if (pinput[1]==1'b1) poutput=3'b001;
		else if (pinput[0]==1'b1) poutput=3'b000;	// Lowest Priority
	end 
endmodule 

// ***************Program ends here*************************