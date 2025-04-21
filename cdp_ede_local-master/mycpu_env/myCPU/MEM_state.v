module MEM_state(
    input wire         clk,
    input wire         rst,
    
    //EXE_MEM阶段接口
    /*握手信号*/
    output wire         MEM_allow_in,    //允许数据进入MEM阶段
    input  wire         EXE_MEM_valid,   //EXE阶段数据有效信号
    /*上一级的流水线寄存器*/
    input  wire [31:0]  EXE_pc,          //EXE阶段的pc地址
    input  wire [38:0] EXE_rf,//{res_from_mem[38],rf_we[37],rf_waddr[36:32],alu_result[31:0]}
    input  wire [ 6:0] EXE_load,//{EXE_alu_result[6:5],inst_ld_hu[4],inst_ld_bu[3],inst_ld_h[2],inst_ld_b[1],inst_ld_w[0]}


    //MEM_WB阶段接口
    /*握手信号*/
    input  wire         WB_allow_in,    //允许数据进入WB阶段
    output wire         MEM_WB_valid,   //MEM阶段数据有效信号
    /*往下一级送的流水线寄存器*/
    output reg  [31:0]  MEM_pc,         //MEM阶段的pc地址
    output wire [37:0]  MEM_rf,         //{rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}

    //内存存储器data_sram接口
    input  wire [31:0]  data_sram_rdata //数据存储器读数据
);

    wire MEM_ready_go;                  //MEM准备好发送数据
    reg  MEM_valid;                     //MEM阶段数据有效信号
    /*MEM阶段内部接受上一段流水线的内容*/
    reg  [31:0] mem_alu_result;         //MEM阶段的alu计算结果
    wire [31:0] mem_rf_wdata;           //MEM阶段的写数据
    reg  [4:0]  mem_rf_waddr;
    reg         mem_res_from_mem;       //MEM阶段的寄存器数据来源
    reg         mem_rf_we;              //MEM阶段的内存写使能信号
    wire [31:0] mem_result;             //MEM阶段的结果

    //inst字节使能
    reg inst_ld_w;
    reg inst_ld_b;
    reg inst_ld_h;
    reg inst_ld_bu;
    reg inst_ld_hu;
    reg [1:0] load_addr;

    //EXE_MEM的流水线寄存器信号
    always @(posedge clk) begin
        if(EXE_MEM_valid & MEM_allow_in) begin
            MEM_pc <= EXE_pc;
            {mem_res_from_mem,mem_rf_we,mem_rf_waddr,mem_alu_result} <= EXE_rf;
            {load_addr,inst_ld_hu,inst_ld_bu,inst_ld_h,inst_ld_b,inst_ld_w} <= EXE_load;
        end
    end

    //MEM阶段的控制和握手信号
    assign MEM_ready_go = 1'b1;                 //MEM阶段准备好发送数据
    assign MEM_allow_in = ~MEM_valid | (MEM_ready_go & WB_allow_in); //允许MEM阶段继续执行
    assign MEM_WB_valid = MEM_valid & MEM_ready_go; //MEM阶段数据有效信号
    always @(posedge clk) begin
        if(rst) begin
            MEM_valid <= 1'b0;
        end
        else if(MEM_allow_in) begin
            MEM_valid <= EXE_MEM_valid; //MEM阶段数据有效信号
        end
    end

    //字节使能信号
    assign mem_result = inst_ld_b & load_addr == 2'b00 ? {{24{data_sram_rdata[7]}},data_sram_rdata[7:0]}:
                      inst_ld_b & load_addr == 2'b01 ? {{24{data_sram_rdata[15]}},data_sram_rdata[15:8]}:
                      inst_ld_b & load_addr == 2'b10 ? {{24{data_sram_rdata[23]}},data_sram_rdata[23:16]}:
                      inst_ld_b & load_addr == 2'b11 ? {{24{data_sram_rdata[31]}},data_sram_rdata[31:24]}:
                      inst_ld_h & load_addr == 2'b00 ? {{16{data_sram_rdata[15]}},data_sram_rdata[15:0]}:
                      inst_ld_h & load_addr == 2'b10 ? {{16{data_sram_rdata[31]}},data_sram_rdata[31:16]}:
                      inst_ld_bu& load_addr == 2'b00 ? {24'b0,data_sram_rdata[7:0]}:
                      inst_ld_bu& load_addr == 2'b01 ? {24'b0,data_sram_rdata[15:8]}:
                      inst_ld_bu& load_addr == 2'b10 ? {24'b0,data_sram_rdata[23:16]}:
                      inst_ld_bu& load_addr == 2'b11 ? {24'b0,data_sram_rdata[31:24]}:
                      inst_ld_hu& load_addr == 2'b00 ? {16'b0,data_sram_rdata[15:0]}:
                      inst_ld_hu& load_addr == 2'b10 ? {16'b0,data_sram_rdata[31:16]}:
                      data_sram_rdata;

    //MEM_WB的流水线寄存器信号
    assign mem_rf_wdata = mem_res_from_mem?mem_result:mem_alu_result;
    assign MEM_rf = {mem_rf_we&MEM_valid,mem_rf_waddr,mem_rf_wdata};

endmodule