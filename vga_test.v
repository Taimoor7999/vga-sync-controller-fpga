module vga_test
	(
		input wire clk, key0_n,
		input wire [9:0] sw,
		output wire hsync, vsync,
		output wire [11:0] rgb
	);

	wire reset = ~key0_n;
	reg [11:0] rgb_reg;
	wire video_on;

        vga_sync vga_sync_unit (.clk(clk), .reset(reset), .hsync(hsync), .vsync(vsync),
                                .video_on(video_on), .p_tick(), .x(), .y());
   
        always @(posedge clk, posedge reset)
        if (reset) begin
            rgb_reg <= 0;
		end
        else begin
            rgb_reg <= {sw, sw[9:8]}; 
		end
        assign rgb = (video_on) ? rgb_reg : 12'b0;
endmodule