module Random ( 
    input i_clk,
    input i_rst, 
    output [3:0] o_number
);

    parameter increment = 8'd3;

    logic [7:0] number, n_number;
    logic [7:0] number_shift;
    logic [7:0] number_mul;

    assign o_number = number[5:2];
    assign number_shift = {number[5:0], 2'd0}; // number*4
    assign number_mul = number_shift + number; // number*5
    assign n_number = number_mul + increment; //number*5 + increment

    always_ff @(posedge i_clk or negedge i_rst) begin
        if(~i_rst) begin
             number <= 8'd17;
        end else begin
             number <= n_number;
        end
    end

endmodule

module Top(
	input i_clk,
	input i_rst,
	input i_start,
	output [3:0] o_random_out
);

	parameter base = 30'd10000;

	logic run, n_run;
	logic [29:0] count, n_count;
	logic [3:0] num, n_num;
	logic [3:0] random_num;
	Random r(.i_clk(i_clk), .i_rst(i_rst), .o_number(random_num));

	always_ff @(posedge i_clk or negedge i_rst) begin
		if(~i_rst) begin
			run <= 1'b0;
			count <= 30'd0;
			num <= 4'd0;
		end else begin
			run <= n_run;
			count <= n_count;
			num <= n_num;
		end
	end

	always_comb begin
		if (~run) begin
			n_run = i_start;
			n_count = 30'd0;
			n_num = num;

		end else begin
			n_run = 
		end
	end
	if(count == 30'd500_0000) n_show_num = num;
				else if(count == 30'd1000_0000) n_show_num = num;
				else if(count == 30'd1500_0000) n_show_num = num;
				else if(count == 30'd2000_0000) n_show_num = num;
				else if(count == 30'd2500_0000) n_show_num = num;
				else if(count == 30'd3000_0000) n_show_num = num;
				else if(count == 30'd3500_0000) n_show_num = num;
				else if(count == 30'd4000_0000) n_show_num = num;
				else if(count == 30'd4500_0000) n_show_num = num;
				else if(count == 30'd5000_0000) n_show_num = num;
				else if(count == 30'd5500_0000) n_show_num = num;
				else if(count == 30'd6000_0000) n_show_num = num;
				else if(count == 30'd6500_0000) n_show_num = num;
				else if(count == 30'd7000_0000) n_show_num = num;
				else if(count == 30'd7500_0000) n_show_num = num;
				else if(count == 30'd8000_0000) n_show_num = num;
				else if(count == 30'd8500_0000) n_show_num = num;
				else if(count == 30'd9000_0000) n_show_num = num;
				else if(count == 30'd9500_0000) n_show_num = num;
				else if(count == 30'd1_0000_0000) n_show_num = num;
				if(count == 30'd1_1000_0000) n_show_num = num;
				if(count == 30'd1_2000_0000) n_show_num = num;
				if(count == 30'd1_3000_0000) n_show_num = num;
				if(count == 30'd1_4000_0000) n_show_num = num;
				if(count == 30'd1_5000_0000) n_show_num = num;
				if(count == 30'd1_6000_0000) n_show_num = num;
				if(count == 30'd1_7000_0000) n_show_num = num;
				if(count == 30'd1_8000_0000) n_show_num = num;
				if(count == 30'd1_9000_0000) n_show_num = num;
				if(count == 30'd2_0000_0000) n_show_num = num;
				if(count == 30'd2_2500_0000) n_show_num = num;	
				if(count == 30'd2_5000_0000) n_show_num = num;
				if(count == 30'd2_7500_0000) n_show_num = num;
				if(count == 30'd3_0000_0000) n_show_num = num;

	
endmodule
