module Top(
	input i_clk,
	input i_rst,
	input i_start,
	output [3:0] o_random_out
);

	parameter IDLE = 2'b00;
	parameter RUN_1 = 2'b01;
	parameter RUN_2 = 2'b10;
	parameter RUN_3 = 2'b11;

	logic [1:0]state, next_state;
	logic [29:0]count, next_count;
	logic [3:0] num;
	logic [3:0] show_num, n_show_num;

	logic [31:0] random, n_random;
	//Random random(.i_clk(i_clk), .i_rst(i_rst), .o_number(num));
	assign o_random_out = show_num;

	always_comb begin
		case(state)
			IDLE: begin
				if(i_start == 0) next_state = IDLE;
				else next_state = RUN_1; 
				next_count = 30'b0;
				n_show_num = show_num;
			end
			RUN_1: begin
				if(count == 30'd1_0000_0000)begin
					next_state = RUN_2;
					next_count = count + 1'b1;
				end
				else if(i_start == 1)begin
					next_state = RUN_1;
					next_count = 0;
				end
				else begin
					next_state = RUN_1;
					next_count = count + 1'b1;
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
				else n_show_num = show_num;

			end
			RUN_2: begin
				if(count == 30'd2_0000_0000)begin
					next_state = RUN_3;
					next_count = count + 1'b1;
				end
				else if(i_start == 1)begin
					next_state = RUN_1;
					next_count = 0;
				end
				else begin 
					next_state = RUN_2;
					next_count = count + 1'b1;
				end
				if(count == 30'd1_1000_0000) n_show_num = num;
				else if(count == 30'd1_2000_0000) n_show_num = num;
				else if(count == 30'd1_3000_0000) n_show_num = num;
				else if(count == 30'd1_4000_0000) n_show_num = num;
				else if(count == 30'd1_5000_0000) n_show_num = num;
				else if(count == 30'd1_6000_0000) n_show_num = num;
				else if(count == 30'd1_7000_0000) n_show_num = num;
				else if(count == 30'd1_8000_0000) n_show_num = num;
				else if(count == 30'd1_9000_0000) n_show_num = num;
				else if(count == 30'd2_0000_0000) n_show_num = num;
				else n_show_num = show_num;
			end
			RUN_3: begin
				if(count == 30'd3_0000_0000)begin
					next_state = IDLE;
					next_count = count + 1'b1;
				end
				else if(i_start == 1)begin
					next_state = RUN_1;
					next_count = 0;
				end
				else begin 
					next_state = RUN_3;
					next_count = count + 1'b1;		
				end
				if(count == 30'd2_2500_0000) n_show_num = num;	
				else if(count == 30'd2_5000_0000) n_show_num = num;
				else if(count == 30'd2_7500_0000) n_show_num = num;
				else if(count == 30'd3_0000_0000) n_show_num = num;
				else n_show_num = show_num;	
			end
		endcase
	end

	assign n_random = random*16807 % 2147483647;
	assign num = random[7:4];
	
	always_ff@(posedge i_clk or negedge i_rst) begin
		if(~i_rst)begin
			state <= IDLE;
			count <= 30'd0;
			show_num <= 4'd0;
			random <= 32'd1;
		end
		else begin
			state <= next_state;
			count <= next_count;
			show_num <= n_show_num;
			random <= n_random;
		end
	end

	
endmodule
