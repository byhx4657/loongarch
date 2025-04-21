/*控制信号解释：
X_allow_in:在X阶段产生，向X阶段的上一阶段传递，表示允许上一阶段的数据进入X阶段
X_Y_valid: 在X阶段产生，向X阶段的下一阶段传递，表示X阶段向Y阶段传递的数据有效
X_valid:   在X阶段产生，不向外传递，表示X阶段正在处理的数据有效
X_ready_go:在X阶段产生，向X阶段的下一阶段传递，表示X阶段已经处理完毕数据，准备好向下一阶段发送数据
*/
module IF_state(
    input  wire        clk,
    input  wire        rst,

    //指令寄存器inst_sram
    output wire        inst_sram_en,    //指令存储器使能信号
    output wire [ 3:0] inst_sram_we,    //指令存储器写使能信号
    output wire [31:0] inst_sram_addr,  //指令存储器地址
    output wire [31:0] inst_sram_wdata, //指令存储器写数据
    input  wire [31:0] inst_sram_rdata, //指令存储器读数据

    //IF_ID阶段接口
    /*握手信号*/
    input  wire         ID_allow_in,    //允许数据进入ID阶段
    output wire         IF_ID_valid,    //IF向ID阶段传递数据有效信号
    /*往下一级送的流水线寄存器*/
    output wire [31:0]  IF_inst,        //IF取出的指令
    output reg  [31:0]  IF_pc,          //IF的pc地址，用于计算跳转地址
    /*分支跳转信号*/
    input  wire         br_taken,       //分支跳转信号
    input  wire [31:0]  br_target       //分支跳转目标地址
);

    //IF阶段的控制和握手信号
    wire        IF_ready_go;    //IF准备好发送数据
    wire        IF_allowin;     //允许IF阶段继续取指令
    reg         IF_valid;       //IF阶段数据有效信号
    wire [31:0] seq_pc;         //pc + 4，next_pc的默认值
    wire [31:0] next_pc;        //由多选器选出的下一个pc地址

    assign IF_ready_go = 1'b1;
    assign IF_allowin = ~IF_valid | (IF_ready_go & ID_allow_in); 
    assign IF_ID_valid = IF_valid & IF_ready_go; 
    always @(posedge clk) begin
        //刚启动CPU或者发生重置时，设置IF_valid无效，准备接受新的指令
        if(rst) begin
            IF_valid <= 1'b0;
        end
        else if(IF_allowin) begin
            IF_valid <= 1'b1;
        end
        else if(br_taken) begin
            IF_valid <= 1'b0; //如果发生分支跳转，则IF_valid无效，准备接受新的指令
        end
    end

    //指令存储器inst_sram的控制信号
    assign inst_sram_en   = IF_allowin & ~rst; //IF阶段有效时使能指令存储器
    assign inst_sram_we   = 4'b0000; //指令存储器不写数据
    assign inst_sram_addr = next_pc; //同步读寄存器，所以地址为next_pc
    assign inst_sram_wdata = 32'b0; //指令存储器不写数据

    //IF阶段的pc地址计算
    assign seq_pc = IF_pc + 32'd4; //pc + 4
    assign next_pc = br_taken ? br_target : seq_pc; //如果发生分支跳转，则pc = br_target，否则pc = pc + 4

    //IF到ID的流水线寄存器信号
    assign IF_inst = inst_sram_rdata; //IF阶段取出的指令
    always @(posedge clk) begin
        if(rst) begin
            IF_pc <= 32'h1bfffffc; //重置后，nextpc = 0x1c000000
        end
        else if(IF_allowin) begin
            IF_pc <= next_pc; //更新pc地址
        end
    end
endmodule
