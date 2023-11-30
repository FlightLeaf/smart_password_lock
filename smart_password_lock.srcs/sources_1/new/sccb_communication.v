`timescale 1ns/1ns
module sccb_communication 
#(
    // 常量
    parameter INPUT_CLK_FREQ = 25000000,  // 25MHz
    parameter SCCB_FREQ = 100000  // 100kHz, constant
)
(
    input wire clk,  // 系统时钟
    input wire reset,
    input wire start,
    input wire [7:0] sub_address, // OV7670功能设置地址（用于第2阶段txm）
    input wire [7:0] set_data,  // 对于第3阶段txm
    output wire ready,
    output wire SIOC,  // SCCB设置时钟
    inout wire SIOD    // SCCB数据，基于SCCB规范文档
);

reg ready_reg = 1'b1;
reg SIOC_reg = 1'b1;
reg SIOD_reg = 1'b1;
//至模块外侧
assign ready = ready_reg;
assign SIOC = SIOC_reg;
assign SIOD = SIOD_reg;

//OV7670硬件地址
localparam CAMERA_ADDRESS = 8'h42; // for phase 1 txm

//定义FSM状态
//生成SIO_C、SIO_D数据波形
//符合SCCB定时规范
//使用4个传输步骤
//产生停止信号的4个结束过程步骤
localparam FSM_IDLE = 4'd0,
           FSM_START = 4'd1,
           FSM_LOAD = 4'd2,
           FSM_TXM1 = 4'd3,
           FSM_TXM2 = 4'd4,
           FSM_TXM3 = 4'd5,
           FSM_TXM4 = 4'd6,
           FSM_END_PROC1 = 4'd7,
           FSM_END_PROC2 = 4'd8,
           FSM_END_PROC3 = 4'd9,
           FSM_END_PROC4 = 4'd10,
           FSM_DONE = 4'd11,
           FSM_TIMER = 4'd12;

//使用变量定义FSM
reg [3:0] SCCB_FSM_state = 0;
reg [3:0] FSM_return_state = 0;
reg [31:0] timer = 0;  //设置延迟时间
reg [7:0] sub_address_reg; //功能设置地址
reg [7:0] set_data_reg;    //功能设定值
reg [1:0] byte_counter = 0;  //descide传输序列（地址、子地址、数据）
reg [3:0] bit_index = 0;
reg [7:0] load_txm_byte = 0;  //8位地址或数据，等待传输

//FSM
always @(posedge clk or negedge reset) begin
    if (!reset) begin
        SCCB_FSM_state <= FSM_IDLE;
    end
    else begin
        case (SCCB_FSM_state)

            FSM_IDLE: begin
                // 初始化
                bit_index <= #1 4'b0000;
                byte_counter <= #1 2'b00;
                //如果接收到启动信号，则启动txm进程
                if (start) begin
                    // 启动SCCB传输过程
                    SCCB_FSM_state <= #1 FSM_START;
                    // txm的锁存器设置地址和数据
                    sub_address_reg <= #1 sub_address;
                    set_data_reg <= #1 set_data;
                    // 更改为模块忙信号
                    ready_reg <= #1 1'b0;
                end
                else begin
                    //如果未接收到启动信号
                    //等待输入启动信号
                    //txm进程已准备好输入新数据               
                    ready_reg <= #1 1'b1; 
                end
            end

            FSM_START: begin
                // 转到计时器，设置下一步
                SCCB_FSM_state <= #1 FSM_TIMER;
                FSM_return_state <= #1 FSM_LOAD;
                timer <= #1 (INPUT_CLK_FREQ / (4*SCCB_FREQ));
                // SCCB启动信号：SIO_C高，SIO_D低
                SIOC_reg <= #1 1'b1; // high
                SIOD_reg <= #1 1'b0; // low 
            end

            FSM_LOAD: begin            
                //如果完成3类型的数据txm，则转到END步骤
                //否则转到传输步骤
                SCCB_FSM_state <= #1 (byte_counter == 3) ? FSM_END_PROC1 : FSM_TXM1;
                byte_counter <= #1 byte_counter + 1;
                bit_index <= #1 0; // inital counter for txm bit number
                //为了传输3个相位
                //加载txm数据序列
                //0:硬件地址
                //1：子地址
                //2：设置数据
                case (byte_counter)
                    0: load_txm_byte <= #1 CAMERA_ADDRESS;
                    1: load_txm_byte <= #1 sub_address_reg;
                    2: load_txm_byte <= #1 set_data_reg;
                    default: load_txm_byte <= #1 set_data_reg;
                endcase            
            end

            FSM_TXM1: begin
                SCCB_FSM_state <= #1 FSM_TIMER;
                FSM_return_state <= #1 FSM_TXM2;
                timer <= #1 (INPUT_CLK_FREQ / (4*SCCB_FREQ));
                // Delay 1/4 SIOC CLK to new SIO_C/D signal
                SIOC_reg <= #1 1'b0;
                // SIO_C to low, delay 1/4 SIOC and to change SIOD under SIOC Low
            end

            FSM_TXM2: begin
                // read txm data or address bit
                // SIOD change while SIOC low 
                SCCB_FSM_state <= #1 FSM_TIMER;
                FSM_return_state <= #1 FSM_TXM3;
                timer <= #1 (INPUT_CLK_FREQ / (4*SCCB_FREQ));
                // set SIOD value
                // after txm 8 bits value, add 1 bit z
                // total txm 9 bits (8 + 1) for a SIO_D phase
                if (bit_index < 8)
                    SIOD_reg <= #1 load_txm_byte[7]; // 0~7 bit txm
                else
                    SIOD_reg <= #1 1'bz; // After 8 bit txm, 9th bit = z
            end

            FSM_TXM3: begin
                // produce SIO_C Clk high singal
                SCCB_FSM_state <= #1 FSM_TIMER;
                FSM_return_state <= #1 FSM_TXM4;
                // 1/2 SIOD CLK = 1 SIOC Clk peak
                // SIOD CLK High range time = 
                // 2 X SIOC CLK High range time
                timer <= #1 (INPUT_CLK_FREQ / (2*SCCB_FREQ));
                SIOC_reg <= #1 1'b1; // rising SIO_C clk high to generate SIO_C sign
            end

            FSM_TXM4: begin
                // If txm bit < 9 (0~8: 9 bit), continue txm
                // If txm bit = 9, load new txm data
                SCCB_FSM_state <= #1 (bit_index == 8) ? FSM_LOAD : FSM_TXM1;
                // change next txm data bit: left shift 1 bit
                load_txm_byte <= #1 load_txm_byte << 1;
                // add 1 bit count
                bit_index <= bit_index + 1;
            end

            FSM_END_PROC1: begin
                // reset SIOC to low, prepare for end signal
                SCCB_FSM_state <= #1 FSM_TIMER;
                FSM_return_state <= #1 FSM_END_PROC2;
                timer <= #1 (INPUT_CLK_FREQ / (4*SCCB_FREQ));
                SIOC_reg <= #1 1'b0;  // SIO_C to low
            end

            FSM_END_PROC2: begin
                // than change SIO_D to low, prepare for end signal
                // SIO_D can change only SIO_C low
                SCCB_FSM_state <= #1 FSM_TIMER;
                FSM_return_state <= #1 FSM_END_PROC3;
                timer <= #1 (INPUT_CLK_FREQ / (4*SCCB_FREQ));
                SIOD_reg <= #1 1'b0;
                // both SIO_D & SIO_C to low
            end

            FSM_END_PROC3: begin
                SCCB_FSM_state <= #1 FSM_TIMER;
                FSM_return_state <= #1 FSM_END_PROC4;
                timer <= #1 (INPUT_CLK_FREQ / (4*SCCB_FREQ));
                // END signal 1st step, SIOC to high
                SIOC_reg <= #1 1'b1; 
            end

            FSM_END_PROC4: begin
                // END signal 2nd step, SIOD to high
                SCCB_FSM_state <= #1 FSM_TIMER;
                FSM_return_state <= #1 FSM_DONE;
                timer <= #1 (INPUT_CLK_FREQ / (4*SCCB_FREQ));
                SIOD_reg <= #1 1'b1;
            end

            FSM_DONE: begin
                // delay to fit hold time demand
                SCCB_FSM_state <= #1 FSM_TIMER;
                FSM_return_state <= #1 FSM_IDLE;
                timer <= #1 (INPUT_CLK_FREQ / (2*SCCB_FREQ));
                byte_counter <= #1 0;
            end

            FSM_TIMER: begin
                // count clock cycle to delay change signal
                // use timer value to fit SCCB timing spec
                SCCB_FSM_state <= #1 (timer == 0) ? FSM_return_state : FSM_TIMER;
                timer <= #1 (timer == 0) ? 0 : timer - 1;
            end

            default: begin
                SCCB_FSM_state <= #1 FSM_IDLE;
            end
            
        endcase  
        
    end  
end

    
endmodule