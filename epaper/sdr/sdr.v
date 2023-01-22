/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 5.8 */
/* C:\Program Files (x86)\Lattice\diamond\3.12\ispfpga\bin\nt64\scuba.exe -w -n sdr -lang verilog -synth synplify -bus_exp 7 -bb -arch sa5p00 -type iol -mode Receive -io_type LVCMOS25 -width 16 -freq_in 200 -aligned -del -1 -gear 1  */
/* Sat Jan 14 22:42:31 2023 */


`timescale 1 ns / 1 ps
module sdr (clkin, reset, sclk, datain, q)/* synthesis NGD_DRC_MASK=1 */;
    input wire clkin;
    input wire reset;
    input wire [15:0] datain;
    output wire sclk;
    output wire [15:0] q;

    wire buf_clkin;
    wire scuba_vhi;
    wire dataini_t15;
    wire dataini_t14;
    wire dataini_t13;
    wire dataini_t12;
    wire dataini_t11;
    wire dataini_t10;
    wire dataini_t9;
    wire dataini_t8;
    wire dataini_t7;
    wire dataini_t6;
    wire dataini_t5;
    wire dataini_t4;
    wire dataini_t3;
    wire dataini_t2;
    wire dataini_t1;
    wire dataini_t0;
    wire buf_dataini15;
    wire buf_dataini14;
    wire buf_dataini13;
    wire buf_dataini12;
    wire buf_dataini11;
    wire buf_dataini10;
    wire buf_dataini9;
    wire buf_dataini8;
    wire buf_dataini7;
    wire buf_dataini6;
    wire buf_dataini5;
    wire buf_dataini4;
    wire buf_dataini3;
    wire buf_dataini2;
    wire buf_dataini1;
    wire buf_dataini0;

    IB Inst3_IB (.I(clkin), .O(buf_clkin))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IFS1P3DX Inst2_IFS1P3DX15 (.D(dataini_t15), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[15]));

    IFS1P3DX Inst2_IFS1P3DX14 (.D(dataini_t14), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[14]));

    IFS1P3DX Inst2_IFS1P3DX13 (.D(dataini_t13), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[13]));

    IFS1P3DX Inst2_IFS1P3DX12 (.D(dataini_t12), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[12]));

    IFS1P3DX Inst2_IFS1P3DX11 (.D(dataini_t11), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[11]));

    IFS1P3DX Inst2_IFS1P3DX10 (.D(dataini_t10), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[10]));

    IFS1P3DX Inst2_IFS1P3DX9 (.D(dataini_t9), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[9]));

    IFS1P3DX Inst2_IFS1P3DX8 (.D(dataini_t8), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[8]));

    IFS1P3DX Inst2_IFS1P3DX7 (.D(dataini_t7), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[7]));

    IFS1P3DX Inst2_IFS1P3DX6 (.D(dataini_t6), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[6]));

    IFS1P3DX Inst2_IFS1P3DX5 (.D(dataini_t5), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[5]));

    IFS1P3DX Inst2_IFS1P3DX4 (.D(dataini_t4), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[4]));

    IFS1P3DX Inst2_IFS1P3DX3 (.D(dataini_t3), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[3]));

    IFS1P3DX Inst2_IFS1P3DX2 (.D(dataini_t2), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[2]));

    IFS1P3DX Inst2_IFS1P3DX1 (.D(dataini_t1), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[1]));

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    IFS1P3DX Inst2_IFS1P3DX0 (.D(dataini_t0), .SP(scuba_vhi), .SCLK(buf_clkin), 
        .CD(reset), .Q(q[0]));

    IB Inst1_IB15 (.I(datain[15]), .O(buf_dataini15))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB14 (.I(datain[14]), .O(buf_dataini14))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB13 (.I(datain[13]), .O(buf_dataini13))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB12 (.I(datain[12]), .O(buf_dataini12))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB11 (.I(datain[11]), .O(buf_dataini11))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB10 (.I(datain[10]), .O(buf_dataini10))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB9 (.I(datain[9]), .O(buf_dataini9))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB8 (.I(datain[8]), .O(buf_dataini8))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB7 (.I(datain[7]), .O(buf_dataini7))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB6 (.I(datain[6]), .O(buf_dataini6))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB5 (.I(datain[5]), .O(buf_dataini5))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB4 (.I(datain[4]), .O(buf_dataini4))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB3 (.I(datain[3]), .O(buf_dataini3))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB2 (.I(datain[2]), .O(buf_dataini2))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB1 (.I(datain[1]), .O(buf_dataini1))
             /* synthesis IO_TYPE="LVCMOS25" */;

    IB Inst1_IB0 (.I(datain[0]), .O(buf_dataini0))
             /* synthesis IO_TYPE="LVCMOS25" */;

    assign sclk = buf_clkin;
    assign dataini_t15 = buf_dataini15;
    assign dataini_t14 = buf_dataini14;
    assign dataini_t13 = buf_dataini13;
    assign dataini_t12 = buf_dataini12;
    assign dataini_t11 = buf_dataini11;
    assign dataini_t10 = buf_dataini10;
    assign dataini_t9 = buf_dataini9;
    assign dataini_t8 = buf_dataini8;
    assign dataini_t7 = buf_dataini7;
    assign dataini_t6 = buf_dataini6;
    assign dataini_t5 = buf_dataini5;
    assign dataini_t4 = buf_dataini4;
    assign dataini_t3 = buf_dataini3;
    assign dataini_t2 = buf_dataini2;
    assign dataini_t1 = buf_dataini1;
    assign dataini_t0 = buf_dataini0;


    // exemplar begin
    // exemplar attribute Inst3_IB IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB15 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB14 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB13 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB12 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB11 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB10 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB9 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB8 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB7 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB6 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB5 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB4 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB3 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB2 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB1 IO_TYPE LVCMOS25
    // exemplar attribute Inst1_IB0 IO_TYPE LVCMOS25
    // exemplar end

endmodule
