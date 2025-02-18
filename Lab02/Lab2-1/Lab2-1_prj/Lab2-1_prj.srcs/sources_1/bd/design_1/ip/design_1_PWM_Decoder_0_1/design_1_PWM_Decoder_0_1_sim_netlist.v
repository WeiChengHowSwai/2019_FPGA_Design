// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 29 11:32:45 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/2019_FPGA_Design/Lab02/Lab2-1/Lab2-1_prj/Lab2-1_prj.srcs/sources_1/bd/design_1/ip/design_1_PWM_Decoder_0_1/design_1_PWM_Decoder_0_1_sim_netlist.v
// Design      : design_1_PWM_Decoder_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PWM_Decoder_0_1,PWM_Decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "PWM_Decoder,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_PWM_Decoder_0_1
   (sw,
    R_time_out,
    G_time_out,
    B_time_out);
  input [1:0]sw;
  output [7:0]R_time_out;
  output [7:0]G_time_out;
  output [7:0]B_time_out;

  wire \<const1> ;
  wire [7:7]\^G_time_out ;
  wire [1:0]sw;

  assign B_time_out[7] = sw[1];
  assign B_time_out[6] = sw[1];
  assign B_time_out[5] = sw[1];
  assign B_time_out[4] = sw[1];
  assign B_time_out[3] = sw[1];
  assign B_time_out[2] = sw[1];
  assign B_time_out[1] = sw[1];
  assign B_time_out[0] = sw[1];
  assign G_time_out[7] = \^G_time_out [7];
  assign G_time_out[6] = sw[0];
  assign G_time_out[5] = sw[0];
  assign G_time_out[4] = \^G_time_out [7];
  assign G_time_out[3:2] = sw;
  assign G_time_out[1] = sw[1];
  assign G_time_out[0] = \^G_time_out [7];
  assign R_time_out[7] = \^G_time_out [7];
  assign R_time_out[6] = \<const1> ;
  assign R_time_out[5] = \<const1> ;
  assign R_time_out[4] = \^G_time_out [7];
  assign R_time_out[3] = \^G_time_out [7];
  assign R_time_out[2] = \<const1> ;
  assign R_time_out[1] = \^G_time_out [7];
  assign R_time_out[0] = \^G_time_out [7];
  LUT2 #(
    .INIT(4'h8)) 
    \G_time_out[0]_INST_0 
       (.I0(sw[0]),
        .I1(sw[1]),
        .O(\^G_time_out ));
  VCC VCC
       (.P(\<const1> ));
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
