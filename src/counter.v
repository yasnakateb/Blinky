// This is an example of a simple 32 bit up-counter 
// It has a single clock input and a 32-bit output port

module simple_counter(
	clock,
	counter_output
);
	input clock;
	output reg [31:0] counter_output; 
	
	// On positive clock edge
	always @ (posedge clock)
		begin
			// Increment counter
			counter_output <= #1 counter_output + 1;
		end
endmodule 