
//use the slide explanation here please
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module clkdiv (
    input wire cin, // clock input
    output reg cout // clock output, initialized to 0
);
    reg [31:0] i = 0; // Initialize counter to 0
	 
    always @(posedge cin) begin
        if (i == 25000000) begin
            i <= 0;
            cout <= ~cout;
        end else i <= i + 1;
    end
endmodule
