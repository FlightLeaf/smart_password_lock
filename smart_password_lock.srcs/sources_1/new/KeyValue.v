`timescale 1ns / 1ps
//***************************************************************************
//功能：矩阵键盘检测
//
//
//作者:Ray
//时间:2021-4-24
//***************************************************************************
module KeyValue(
	clk,
	reset,
	key_row,
	key_col,
	key_value,
	value_en
);
	input clk;
	input reset;
	input [3:0] key_col;				//列

	output reg value_en;
	output reg [3:0]key_row;		//行
	output reg [3:0]key_value;		//矩阵键盘按下的值
	
	wire [3:0]key_flag;				//按键标志位
	wire [3:0]key_state;
	
	reg [4:0]state = 5'b00001;
	reg row_flag;						//标识已定位到行
	reg [1:0]rowIndex;				//行索引
	reg [1:0]colIndex;				//列索引
	
	parameter
		NO_KEY		=	5'b00001,
		ROW_ONE		=	5'b00010,
		ROW_TWO		=	5'b00100,
		ROW_THREE	=	5'b01000,
		ROW_FOUR	=	5'b10000;
		
	KeyPress u0(clk,reset,key_col[0],key_flag[0],key_state[0]);
	KeyPress u1(clk,reset,key_col[1],key_flag[1],key_state[1]);
	KeyPress u2(clk,reset,key_col[2],key_flag[2],key_state[2]);
	KeyPress u3(clk,reset,key_col[3],key_flag[3],key_state[3]);
	
	//==========通过状态机判断行===========//
	always @(posedge clk or posedge reset) begin
		if(reset) begin
				state <= NO_KEY;
				row_flag <= 1'b0;
				key_row <= 4'b0000;
		end	else begin
			case(state)
				NO_KEY: begin
					row_flag <= 1'b0;
					key_row <= 4'b0000;	
					if(key_flag != 4'b0000) begin
						state <= ROW_ONE;
						key_row <= 4'b1110;
					end	else begin
						state <= NO_KEY;
					end
				end
				
				ROW_ONE: begin
					if(key_col != 4'b1111) begin
						state <= NO_KEY;
						rowIndex <= 4'd0;
						row_flag <= 1'b1;
					end	else begin
						state <= ROW_TWO;
						key_row <= 4'b1101;
					end						
				end
				
				ROW_TWO: begin
					if(key_col != 4'b1111) begin
						state <= NO_KEY;
						rowIndex <= 4'd1;
						row_flag <= 1'b1;
					end	else begin
						state <= ROW_THREE;
						key_row <= 4'b1011;
					end						
				end
				
				ROW_THREE: begin
					if(key_col != 4'b1111) begin
						state <= NO_KEY;
						rowIndex <= 4'd2;
						row_flag <= 1'b1;
					end	else begin
						state <= ROW_FOUR;
						key_row <= 4'b0111;
					end						
				end
				
				ROW_FOUR: begin
					if(key_col != 4'b1111) begin
						rowIndex <= 4'd3;
						row_flag <= 1'b1;
					end
					state <= NO_KEY;
				end

                default:begin
                    state <= NO_KEY;
                end
			endcase
		end	
	end
	//===========判断按键所在列=============//
	always @(posedge clk or posedge reset) begin
		if(reset) begin
			colIndex <= 2'd0;
		end	else if(key_state != 4'b1111) begin
			case(key_state)
				4'b1110: colIndex <= 2'd0;
				4'b1101: colIndex <= 2'd1;
				4'b1011: colIndex <= 2'd2;
				4'b0111: colIndex <= 2'd3;
			endcase
		end	
	end
		
	
	//===========通过行列计算键值==========//
	always @(posedge clk or posedge reset) begin
		if(reset) begin
			value_en <= 1'b0;
		end	else if(row_flag) begin
			value_en <= 1'b1;
			key_value <= 4*rowIndex + colIndex;
		end else begin
			value_en <= 1'b0;
		end
	end
endmodule


