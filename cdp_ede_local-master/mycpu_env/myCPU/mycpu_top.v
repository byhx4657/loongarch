module mycpu_top(
    input  wire        clk,
    input  wire        resetn,
    // inst sram interface
    output wire        inst_sram_en,
    output wire [ 3:0] inst_sram_we,
    output wire [31:0] inst_sram_addr,
    output wire [31:0] inst_sram_wdata,
    input  wire [31:0] inst_sram_rdata,
    // data sram interface
    output wire        data_sram_en,
    output wire [ 3:0] data_sram_we,
    output wire [31:0] data_sram_addr,
    output wire [31:0] data_sram_wdata,
    input  wire [31:0] data_sram_rdata,
    // trace debug interface
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata
);

    //各级流水线间连线信号
    /*IF阶段*/
    wire        ID_allow_in;
    wire        IF_ID_valid;
    wire [31:0] IF_inst;
    wire [31:0] IF_pc;
    wire        br_taken;
    wire [31:0] br_target;
    /*ID阶段*/
    wire        EXE_allow_in;
    wire        ID_EXE_valid;
    wire [31:0] ID_pc;
    wire [33:0] ID_mem;
    wire [ 5:0] ID_rf;
    wire [82:0] ID_alu;
    wire [37:0] WB_rf;
    wire [ 7:0] ID_inst;
    wire [ 6:0] EXE_load;
    /*EXE阶段*/
    wire        MEM_allow_in;
    wire        EXE_MEM_valid;
    wire [31:0] EXE_pc;
    wire [31:0] EXE_alu_result;
    wire [38:0] EXE_rf;
    wire [33:0] EXE_mem;
    /*MEM阶段*/
    wire        MEM_WB_valid;
    wire        WB_allow_in;
    wire [31:0] MEM_pc;
    wire [37:0] MEM_rf;

    reg         reset;
    always @(posedge clk) begin
        reset <= ~resetn;
    end

    IF_state  IF_state_inst (
    .clk(clk),
    .rst(reset),
    .inst_sram_en(inst_sram_en),
    .inst_sram_we(inst_sram_we),
    .inst_sram_addr(inst_sram_addr),
    .inst_sram_wdata(inst_sram_wdata),
    .inst_sram_rdata(inst_sram_rdata),
    .ID_allow_in(ID_allow_in),
    .IF_ID_valid(IF_ID_valid),
    .IF_inst(IF_inst),
    .IF_pc(IF_pc),
    .br_taken(br_taken),
    .br_target(br_target)
  );
  ID_state  ID_state_inst (
    .clk(clk),
    .rst(reset),
    .ID_allow_in(ID_allow_in),
    .IF_ID_valid(IF_ID_valid),
    .IF_inst(IF_inst),
    .IF_pc(IF_pc),
    .br_taken(br_taken),
    .br_target(br_target),
    .EXE_allow_in(EXE_allow_in),
    .ID_EXE_valid(ID_EXE_valid),
    .ID_pc(ID_pc),
    .ID_mem(ID_mem),
    .ID_rf(ID_rf),
    .ID_alu(ID_alu),
    .ID_inst(ID_inst),
    .WB_rf(WB_rf),
    .MEM_rf(MEM_rf),
    .EXE_rf(EXE_rf)
  );
  EXE_state  EXE_state_inst (
    .clk(clk),
    .rst(reset),
    .EXE_allow_in(EXE_allow_in),
    .ID_EXE_valid(ID_EXE_valid),
    .ID_pc(ID_pc),
    .ID_mem(ID_mem),
    .ID_rf(ID_rf),
    .ID_alu(ID_alu),
    .ID_inst(ID_inst),
    .MEM_allow_in(MEM_allow_in),
    .EXE_MEM_valid(EXE_MEM_valid),
    .EXE_pc(EXE_pc),
    .EXE_rf(EXE_rf),
    .EXE_load(EXE_load),
    .data_sram_en(data_sram_en),
    .data_sram_we(data_sram_we),
    .data_sram_addr(data_sram_addr),
    .data_sram_wdata(data_sram_wdata)
  );
  MEM_state  MEM_state_inst (
    .clk(clk),
    .rst(reset),
    .EXE_MEM_valid(EXE_MEM_valid),
    .MEM_allow_in(MEM_allow_in),
    .EXE_pc(EXE_pc),
    .EXE_rf(EXE_rf),
    .EXE_load(EXE_load),
    .MEM_WB_valid(MEM_WB_valid),
    .WB_allow_in(WB_allow_in),
    .MEM_pc(MEM_pc),
    .MEM_rf(MEM_rf),
    .data_sram_rdata(data_sram_rdata)
  );

  WB_state  WB_state_inst (
    .clk(clk),
    .rst(reset),
    .MEM_WB_valid(MEM_WB_valid),
    .WB_allow_in(WB_allow_in),
    .MEM_pc(MEM_pc),
    .MEM_rf(MEM_rf),
    .WB_rf(WB_rf),
    .debug_wb_pc(debug_wb_pc),
    .debug_wb_rf_we(debug_wb_rf_we),
    .debug_wb_rf_wnum(debug_wb_rf_wnum),
    .debug_wb_rf_wdata(debug_wb_rf_wdata)
  );

endmodule