module Random ( 
    input i_clk,
    input i_rst, 
    output [3:0] o_number
);

    parameter increment = 8'd3;

    logic [7:0] number, n_number;
    logic [7:0] number_shift;
    logic [7:0] number_mul;
	logic [7:0] number_ans;

    assign o_number = number[5:2];
    assign number_shift = {number[5:0], 2'd0}; // number*4
    assign number_mul = number_shift + number; // number*5
    assign number_ans = number_mul + increment; //number*5 + increment
	assign n_number = number_ans;

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

	parameter IDLE = 2'b00;
	parameter RUN_1 = 2'b01;
	parameter RUN_2 = 2'b10;
	parameter RUN_3 = 2'b11;

	logic [1:0]state, next_state;
	logic [30:0]count, next_count;
	logic [3:0]num;
	logic [3:0] show_num, n_show_num;

	Random random(.i_clk(i_clk), .i_rst(i_rst), .o_number(num));
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
				if(count == 30'd1_0000_0000) next_state = RUN_2;
				else if(i_start == 1) next_state = IDLE;
				else next_state = RUN_1;
				next_count = count + 1'b1;
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
				if(count == 30'd2_0000_0000) next_state = RUN_3;
				else if(i_start == 1) next_state = IDLE;
				else next_state = RUN_2;
				next_count = count + 1'b1;
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
				else n_show_num = show_num;
			end
			RUN_3: begin
				if(count == 30'd300000000) next_state = IDLE;
				else if(i_start == 1) next_state = IDLE;
				else next_state = RUN_3;
				next_count = count + 1'b1;		
				if(count == 30'd2_2500_0000) n_show_num = num;	
				if(count == 30'd2_5000_0000) n_show_num = num;
				if(count == 30'd2_7500_0000) n_show_num = num;
				if(count == 30'd3_0000_0000) n_show_num = num;
				else n_show_num = show_num;	
			end
		endcase
	end

	always_ff@(posedge i_clk or negedge i_rst) begin
		if(~i_rst)begin
			state <= IDLE;
			count <= 30'd0;
			show_num <= 4'd0;
		end
		else begin
			state <= next_state;
			count <= next_count;
			show_num <= n_show_num;
		end
	end

	
endmodule
