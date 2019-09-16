`timescale 1ns/10ps



`define REFLASH   3'd0
`define LOAD      3'd1
`define SHIFT_R   3'd2
`define SHIFT_L   3'd3
`define SHIFT_U   3'd4
`define SHIFT_D   3'd5

`define RESET     3'd0
`define PRINT     3'd2
`define IDLE      3'd3

module lcd_ctrl(clk, reset, datain, cmd, cmd_valid, dataout, output_valid, busy);


input           clk;
input           reset;
input   [7:0]   datain;
input   [2:0]   cmd;
input           cmd_valid;
output  reg [7:0]  dataout;
output  reg        output_valid;
output  reg        busy;

reg [1:0] state, n_state;
reg [7:0] image[35:0];
reg [7:0] out_image[8:0];
reg [3:0] out;
reg [5:0] k;
reg [1:0] X,Y;
integer i,h,j;
	
	
always@(posedge clk or posedge reset)begin
	if(reset)
		state<=`RESET;
	else if(cmd_valid&&cmd==`LOAD)
		state<=`LOAD;
	else
		state<=n_state;
end

always@(posedge clk)begin
	case(state)
	`RESET:begin
			k<=0;
			out<=0;
			for(i=0;i<36;i=i+1)
				image[i]<=0;
		end
	
	`LOAD:begin
			if(k<36)begin				
				k<=k+1;
				image[k]<=datain;
			end
			else k<=0;	
		end
		
	`PRINT:begin
			if(out<9)
				out<=out+1;
			else out<=0;
		end
	`IDLE: begin
		out<=0;
		k<=0;
		end
	endcase
	
end

always@(posedge clk)begin
	if(state==`RESET)begin
		X<=2;
		Y<=2;
	end
	else if(cmd_valid==1)begin
		case(cmd)
		`LOAD:begin
				X<=2;
				Y<=2;
			end
		`SHIFT_R:begin
				if(X<3)
					X<=X+1;
			end
		`SHIFT_L:begin
				if(X>0)
					X<=X-1;
			end
		`SHIFT_U:begin
				if(Y>0)
					Y<=Y-1;
			end
		`SHIFT_D:begin
				if(Y<3)
					Y<=Y+1;
			end
		endcase

	
	end
	
end

always@(*)begin
	if(reset)begin
		for(i=0;i<9;i=i+1)
			out_image[i]=0;
		end
	else begin
		for(j=0;j<3;j=j+1)begin
			for(h=0;h<3;h=h+1)
				out_image[j*3+h]=image[Y*6+j*6+X+h];
		end
	end
end
	

always@(*)begin
	case(state)
	`RESET: begin
			output_valid=0;
			busy=0;
			dataout=0;
			if(cmd==`LOAD)
				n_state=`LOAD;
			else
				n_state=`RESET;
		end

	`LOAD: begin
			output_valid=0;
			busy=1;
			dataout=0;
			if(k==35)
				n_state=`PRINT;
			else
				n_state=`LOAD;
		end
	`PRINT:begin
			output_valid=1;
			busy=1;
			dataout=out_image[out];
			if(out==8)
				n_state=`IDLE;
			else
				n_state=`PRINT;
		end
	`IDLE:begin
			output_valid=0;
			busy=0;
			dataout=0;
			if(cmd_valid)begin
				if(cmd==`LOAD)
					n_state=`LOAD;
				else if(cmd>`LOAD||cmd==`REFLASH)
					n_state=`PRINT;
				else	
					n_state=`IDLE;
				end
			else
				n_state=`IDLE;
		end
	default
		begin
			output_valid=0;
			busy=0;
			dataout=0;
			n_state=`RESET;
		end
	endcase
end



																						
endmodule
