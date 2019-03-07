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

	assign o_random_out = num;

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
			n_run = ~(count == 30'd30000 * base);
			n_count = i_start ? 30'd0 : count+1;
			case (count)
				30'd0,
				30'd500   * base,
				30'd1000  * base,
				30'd1500  * base,
				30'd2000  * base,
				30'd2500  * base,
				30'd3000  * base,
				30'd3500  * base,
				30'd4000  * base,
				30'd4500  * base,
				30'd5000  * base,
				30'd5500  * base,
				30'd6000  * base,
				30'd6500  * base,
				30'd7000  * base,
				30'd7500  * base,
				30'd8000  * base,
				30'd8500  * base,
				30'd9000  * base,
				30'd9500  * base, 
				30'd10000 * base,
				30'd11000 * base,
				30'd12000 * base,
				30'd13000 * base,
				30'd14000 * base,
				30'd15000 * base,
				30'd16000 * base,
				30'd17000 * base,
				30'd18000 * base,
				30'd19000 * base,
				30'd20000 * base,
				30'd22500 * base,
				30'd25000 * base,
				30'd27500 * base,
				30'd30000 * base : n_num = random_num;

				default : n_num = num;
			endcase
		end
	end

	
endmodule
