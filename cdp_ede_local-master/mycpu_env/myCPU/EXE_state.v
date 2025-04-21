module EXE_state(
    input wire         clk,
    input wire         rst,

    //ID_EXE阶段接口
    /*握手信号*/
    output wire         EXE_allow_in,    //允许数据进入EXE阶段
    input  wire         ID_EXE_valid,    //ID阶段数据有效信号
    /*上一级的流水线寄存器*/
    input  wire [31:0]  ID_pc,           //ID阶段的pc地址
    input  wire [33:0] ID_mem,//{mem_we[33],res_from_mem[32],rkd_value[31:0]}
    input  wire [ 5:0] ID_rf,//{rf_we[5],rf_waddr[4:0]}
    input  wire [82:0] ID_alu,//{alu_op[75:64],alu_src2[63:32],alu_src1[0:31]}
    input  wire [ 7:0] ID_inst,

    //EXE_MEM阶段接口
    /*握手信号*/
    input  wire         MEM_allow_in,    //允许数据进入MEM阶段
    output wire         EXE_MEM_valid,    //EXE阶段数据有效信号
    /*往下一级送的流水线寄存器*/
    output reg  [31:0] EXE_pc,//reg类型为级间缓存
    output wire [38:0] EXE_rf,//{res_from_mem[38],rf_we[37],rf_waddr[36:32],alu_result[31:0]}
    output wire [ 6:0]  EXE_load,//{EXE_alu_result[6:5],inst_ld_hu[4],inst_ld_bu[3],inst_ld_h[2],inst_ld_b[1],inst_ld_w[0]}

    //data sram的控制信号
    output wire        data_sram_en,     //数据存储器使能信号
    output wire [ 3:0] data_sram_we,     //数据存储器写使能信号
    output wire [31:0] data_sram_addr,   //数据存储器地址
    output wire [31:0] data_sram_wdata  //数据存储器写数据
    );

    wire EXE_ready_go;
    reg  EXE_valid;
    reg [18:0] EXE_alu_op;
    reg [31:0] EXE_alu_src1;
    reg [31:0] EXE_alu_src2;
    reg        exe_mem_we;
    reg        exe_res_from_mem;
    reg [31:0] exe_rkd_value;
    reg        exe_rf_we;
    reg [ 4:0] exe_rf_waddr;
    wire [31:0] EXE_alu_result; //ALU的计算结果
    wire alu_complete;

    //inst字节使能
    reg inst_ld_w;
    reg inst_ld_b;
    reg inst_ld_h;
    reg inst_ld_bu;
    reg inst_ld_hu;
    reg inst_st_w;
    reg inst_st_b;
    reg inst_st_h;
    wire [31:0] st_data;
    wire [3:0] st_data_byte_en;

    //ID_EXE的流水线寄存器信号
    always @(posedge clk) begin
        if (ID_EXE_valid & EXE_allow_in) begin
            EXE_pc <= ID_pc;
            {EXE_alu_op,EXE_alu_src2,EXE_alu_src1} <= ID_alu;
            {exe_mem_we,exe_res_from_mem,exe_rkd_value} <= ID_mem;
            {exe_rf_we,exe_rf_waddr} <= ID_rf;
            {inst_st_h,inst_st_b,inst_st_w,inst_ld_hu,inst_ld_bu,inst_ld_h,inst_ld_b,inst_ld_w} <= ID_inst;
        end
    end

    //EXE阶段的控制和握手信号
    assign EXE_ready_go = alu_complete; //EXE阶段准备好发送数据
    assign EXE_allow_in = ~EXE_valid | (EXE_ready_go & MEM_allow_in); //允许EXE阶段继续执行
    assign EXE_MEM_valid = EXE_valid & EXE_ready_go; //EXE阶段数据有效信号
    always @(posedge clk) begin
        if(rst) begin
            EXE_valid <= 1'b0; //重置EXE_valid信号
        end
        else if(EXE_allow_in) begin
            EXE_valid <= ID_EXE_valid; //EXE阶段数据有效信号,受到ID_EXE_valid信号的阻塞控制
        end
    end

    //ALU的信号输入
    alu u_alu(
        .clk        (clk            ),
        .rst        (rst            ),
        .alu_op     (EXE_alu_op    ),
        .alu_src1   (EXE_alu_src1  ),
        .alu_src2   (EXE_alu_src2  ),
        .alu_result (EXE_alu_result),
        .es_valid   (EXE_valid     ),
        .es_ready_go(EXE_ready_go),
        .ms_allowin(MEM_allow_in),
        .alu_complete(alu_complete)
        );

    //EXE_MEM阶段的流水线寄存器信号
    assign EXE_rf = {exe_res_from_mem&EXE_valid,exe_rf_we&EXE_valid,exe_rf_waddr,EXE_alu_result};
    assign EXE_load = {EXE_alu_result[1:0],inst_ld_hu,inst_ld_bu,inst_ld_h,inst_ld_b,inst_ld_w};
   
    
    assign st_data = inst_st_b ? {4{exe_rkd_value[7:0]}}:
                     inst_st_h ? {2{exe_rkd_value[15:0]}}:
                     exe_rkd_value;
    assign st_data_byte_en = inst_st_w ? 4'b1111:
                             inst_st_b ? 4'b0001 << EXE_alu_result[1:0]:
                             inst_st_h ? 4'b0011 << EXE_alu_result[1:0]:
                             4'b0000;

    //data_sram的控制信号
    assign data_sram_en = (exe_mem_we | exe_res_from_mem) & EXE_valid;
    assign data_sram_we = {st_data_byte_en} & {4{EXE_valid}};
    assign data_sram_addr = EXE_alu_result;
    assign data_sram_wdata = st_data;

endmodule