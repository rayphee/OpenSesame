// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Nov 26 16:42:05 2018
// Host        : danmanPC running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/danman/sauce/vivado/opensesame/opensesame.srcs/sources_1/bd/design_1/ip/design_1_mult2x2_0_0/design_1_mult2x2_0_0_sim_netlist.v
// Design      : design_1_mult2x2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult2x2_0_0,mult2x2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mult2x2,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_mult2x2_0_0
   (f1,
    f2,
    P);
  input [1:0]f1;
  input [1:0]f2;
  output [3:0]P;

  wire [3:0]P;
  wire [1:0]f1;
  wire [1:0]f2;

  LUT2 #(
    .INIT(4'h8)) 
    \P[0]_INST_0 
       (.I0(f1[0]),
        .I1(f2[0]),
        .O(P[0]));
  LUT4 #(
    .INIT(16'h7000)) 
    \P[2]_INST_0 
       (.I0(f2[0]),
        .I1(f1[0]),
        .I2(f2[1]),
        .I3(f1[1]),
        .O(P[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \P[3]_INST_0 
       (.I0(f2[0]),
        .I1(f1[0]),
        .I2(f2[1]),
        .I3(f1[1]),
        .O(P[3]));
  design_1_mult2x2_0_0_mult2x2 inst
       (.P(P[1]),
        .f1(f1),
        .f2(f2));
endmodule

(* ORIG_REF_NAME = "mult2x2" *) 
module design_1_mult2x2_0_0_mult2x2
   (P,
    f2,
    f1);
  output [0:0]P;
  input [1:0]f2;
  input [1:0]f1;

  wire [0:0]P;
  wire [1:0]f1;
  wire [1:0]f2;

  LUT4 #(
    .INIT(16'h7888)) 
    P__0
       (.I0(f2[0]),
        .I1(f1[1]),
        .I2(f2[1]),
        .I3(f1[0]),
        .O(P));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif