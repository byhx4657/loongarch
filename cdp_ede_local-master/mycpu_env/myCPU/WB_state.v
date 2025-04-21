module WB_state(
    input wire         clk,
    input wire         rst,

    //MEM_WB阶段接口
    /*握手信号*/
    output wire         WB_allow_in,    //允许数据进入WB阶段
    input  wire         MEM_WB_valid,   //MEM阶段数据有效信号
    /*上一级的流水线寄存器*/
    input  wire [31:0]  MEM_pc,          //MEM阶段的pc地址
    input  wire [37:0] MEM_rf,          //{rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}

    //WB_ID阶段接口
    output wire [37:0] WB_rf,//{rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}

    //trace接口
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata
);

    wire WB_ready_go;                  //WB准备好发送数据
    reg  WB_valid;                     //WB阶段数据有效信号
    /*WB阶段内部接受上一段流水线的内容*/
    reg  [31:0] wb_pc;                 //WB阶段的pc地址
    reg  [37:0] wb_rf;                 //{rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}

    //MEM_WB的流水线寄存器信号
    always @(posedge clk) begin
        if(MEM_WB_valid & WB_allow_in) begin
            wb_pc <= MEM_pc;                   //WB阶段的pc地址
            wb_rf <= MEM_rf;                   //EXE阶段的寄存器数据
        end
    end

    //WB阶段的控制和握手信号
    assign WB_ready_go = 1'b1;                 //WB阶段准备好发送数据
    assign WB_allow_in = ~WB_valid | (WB_ready_go); //允许WB阶段继续执行
    always @(posedge clk) begin
        if(rst) begin
            WB_valid <= 1'b0;
        end
        else if (WB_allow_in) begin
            WB_valid <= MEM_WB_valid; //允许WB阶段继续执行
        end
    end

    //WB_ID阶段的流水线寄存器信号
    assign WB_rf = wb_rf;                     //WB阶段的寄存器数据

    //trace接口
    assign debug_wb_pc = wb_pc;               //WB阶段的pc地址
    assign debug_wb_rf_we = {4{wb_rf[37] & WB_valid}};
    assign debug_wb_rf_wnum  = wb_rf[36:32];
    assign debug_wb_rf_wdata = wb_rf[31:0];
endmodule