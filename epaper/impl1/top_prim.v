// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Wed Jan 18 23:12:56 2023
//
// Verilog Description of module top
//

module top (clk_25mhz, btn, gp, led) /* synthesis syn_module_defined=1 */ ;   // e:/projects/fpga/learning/epaper/topmodule.v(19[8:11])
    input clk_25mhz /* synthesis black_box_pad_pin=1 */ ;   // e:/projects/fpga/learning/epaper/topmodule.v(19[18:27])
    input [4:3]btn;   // e:/projects/fpga/learning/epaper/topmodule.v(19[41:44])
    output [12:0]gp;   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    output [7:0]led;   // e:/projects/fpga/learning/epaper/topmodule.v(19[75:78])
    
    wire clk_100mhz /* synthesis is_clock=1, SET_AS_NETWORK=clk_100mhz */ ;   // e:/projects/fpga/learning/epaper/topmodule.v(20[7:17])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // e:/projects/fpga/learning/epaper/pll/pll.v(15[10:18])
    
    wire GND_net, n219, VCC_net;
    wire [32:0]counter_32__N_34;
    
    wire n313, n312, n311, n310, n309, n308, n307, n306, n305, 
        n304, n303, n302, n301, n300, n299, n298, n167, n164, 
        n161, n158, n155, n152, n149, n146, n143, n140, n137, 
        n134, n131, n128, n125, n122, n119, n116, n113, n110, 
        n107, n104, n101, n98, n95, n92, n89, n86, n83, n80, 
        n77, n74, n71, cout, n351, n350, n357, n355, n352, 
        n358, n360, n361, n362, n363, n249, n356, n349, n364, 
        n353, n354, n359, n365;
    
    VHI i5 (.Z(VCC_net));
    CCU2C add_65_29 (.A0(counter_32__N_34[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n362), .COUT(n363));
    defparam add_65_29.INIT0 = 16'h5555;
    defparam add_65_29.INIT1 = 16'h5555;
    defparam add_65_29.INJECT1_0 = "NO";
    defparam add_65_29.INJECT1_1 = "NO";
    CCU2C add_65_27 (.A0(counter_32__N_34[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n361), .COUT(n362));
    defparam add_65_27.INIT0 = 16'h5555;
    defparam add_65_27.INIT1 = 16'h5555;
    defparam add_65_27.INJECT1_0 = "NO";
    defparam add_65_27.INJECT1_1 = "NO";
    CCU2C add_65_25 (.A0(counter_32__N_34[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n360), .COUT(n361));
    defparam add_65_25.INIT0 = 16'h5555;
    defparam add_65_25.INIT1 = 16'h5555;
    defparam add_65_25.INJECT1_0 = "NO";
    defparam add_65_25.INJECT1_1 = "NO";
    CCU2C add_65_23 (.A0(counter_32__N_34[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n359), .COUT(n360));
    defparam add_65_23.INIT0 = 16'h5555;
    defparam add_65_23.INIT1 = 16'h5555;
    defparam add_65_23.INJECT1_0 = "NO";
    defparam add_65_23.INJECT1_1 = "NO";
    FD1S3IX _add_1_25_e2_i0_i31 (.D(counter_32__N_34[31]), .CK(clk_100mhz), 
            .CD(n249), .Q(n74));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i31.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i30 (.D(counter_32__N_34[30]), .CK(clk_100mhz), 
            .CD(n249), .Q(n77));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i30.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i29 (.D(counter_32__N_34[29]), .CK(clk_100mhz), 
            .CD(n249), .Q(n80));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i29.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i28 (.D(counter_32__N_34[28]), .CK(clk_100mhz), 
            .CD(n249), .Q(n83));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i28.GSR = "ENABLED";
    pll myPll (.clk_100mhz(clk_100mhz), .buf_CLKI(buf_CLKI), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // e:/projects/fpga/learning/epaper/topmodule.v(26[6:34])
    clockDivider clckDiv (.n219(n219), .clk_100mhz(clk_100mhz), .cout(cout)) /* synthesis syn_module_defined=1 */ ;   // e:/projects/fpga/learning/epaper/topmodule.v(27[15:46])
    FD1S3IX _add_1_25_e2_i0_i27 (.D(counter_32__N_34[27]), .CK(clk_100mhz), 
            .CD(n249), .Q(n86));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i27.GSR = "ENABLED";
    IB Inst1_IB (.I(clk_25mhz), .O(buf_CLKI)) /* synthesis IO_TYPE="LVCMOS33", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=34, LSE_LLINE=26, LSE_RLINE=26 */ ;   // e:/projects/fpga/learning/epaper/pll/pll.v(19[8:41])
    FD1S3IX _add_1_25_e2_i0_i26 (.D(counter_32__N_34[26]), .CK(clk_100mhz), 
            .CD(n249), .Q(n89));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i26.GSR = "ENABLED";
    CCU2C add_65_21 (.A0(counter_32__N_34[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n358), .COUT(n359));
    defparam add_65_21.INIT0 = 16'h5555;
    defparam add_65_21.INIT1 = 16'h5555;
    defparam add_65_21.INJECT1_0 = "NO";
    defparam add_65_21.INJECT1_1 = "NO";
    FD1S3IX _add_1_25_e2_i0_i25 (.D(counter_32__N_34[25]), .CK(clk_100mhz), 
            .CD(n249), .Q(n92));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i25.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i24 (.D(counter_32__N_34[24]), .CK(clk_100mhz), 
            .CD(n249), .Q(n95));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i24.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i23 (.D(counter_32__N_34[23]), .CK(clk_100mhz), 
            .CD(n249), .Q(n98));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i23.GSR = "ENABLED";
    CCU2C add_65_19 (.A0(counter_32__N_34[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n357), .COUT(n358));
    defparam add_65_19.INIT0 = 16'h5555;
    defparam add_65_19.INIT1 = 16'h5555;
    defparam add_65_19.INJECT1_0 = "NO";
    defparam add_65_19.INJECT1_1 = "NO";
    CCU2C add_65_17 (.A0(counter_32__N_34[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n356), .COUT(n357));
    defparam add_65_17.INIT0 = 16'h5555;
    defparam add_65_17.INIT1 = 16'h5555;
    defparam add_65_17.INJECT1_0 = "NO";
    defparam add_65_17.INJECT1_1 = "NO";
    CCU2C add_65_15 (.A0(counter_32__N_34[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n355), .COUT(n356));
    defparam add_65_15.INIT0 = 16'h5555;
    defparam add_65_15.INIT1 = 16'h5555;
    defparam add_65_15.INJECT1_0 = "NO";
    defparam add_65_15.INJECT1_1 = "NO";
    CCU2C add_65_13 (.A0(counter_32__N_34[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n354), .COUT(n355));
    defparam add_65_13.INIT0 = 16'h5555;
    defparam add_65_13.INIT1 = 16'h5555;
    defparam add_65_13.INJECT1_0 = "NO";
    defparam add_65_13.INJECT1_1 = "NO";
    CCU2C add_65_11 (.A0(counter_32__N_34[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n353), .COUT(n354));
    defparam add_65_11.INIT0 = 16'h5555;
    defparam add_65_11.INIT1 = 16'h5555;
    defparam add_65_11.INJECT1_0 = "NO";
    defparam add_65_11.INJECT1_1 = "NO";
    CCU2C add_65_9 (.A0(counter_32__N_34[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n352), .COUT(n353));
    defparam add_65_9.INIT0 = 16'h5555;
    defparam add_65_9.INIT1 = 16'h5555;
    defparam add_65_9.INJECT1_0 = "NO";
    defparam add_65_9.INJECT1_1 = "NO";
    FD1S3IX _add_1_25_e2_i0_i22 (.D(counter_32__N_34[22]), .CK(clk_100mhz), 
            .CD(n249), .Q(n101));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i22.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i21 (.D(counter_32__N_34[21]), .CK(clk_100mhz), 
            .CD(n249), .Q(n104));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i21.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i20 (.D(counter_32__N_34[20]), .CK(clk_100mhz), 
            .CD(n249), .Q(n107));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i20.GSR = "ENABLED";
    CCU2C add_65_7 (.A0(counter_32__N_34[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n351), .COUT(n352));
    defparam add_65_7.INIT0 = 16'h5555;
    defparam add_65_7.INIT1 = 16'h5555;
    defparam add_65_7.INJECT1_0 = "NO";
    defparam add_65_7.INJECT1_1 = "NO";
    FD1S3IX _add_1_25_e2_i0_i0 (.D(counter_32__N_34[0]), .CK(clk_100mhz), 
            .CD(n249), .Q(n167));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i0.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i19 (.D(counter_32__N_34[19]), .CK(clk_100mhz), 
            .CD(n249), .Q(n110));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i19.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i3 (.D(counter_32__N_34[3]), .CK(clk_100mhz), 
            .CD(n249), .Q(n158));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i3.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i18 (.D(counter_32__N_34[18]), .CK(clk_100mhz), 
            .CD(n249), .Q(n113));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i18.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i17 (.D(counter_32__N_34[17]), .CK(clk_100mhz), 
            .CD(n249), .Q(n116));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i17.GSR = "ENABLED";
    OB led_pad_0 (.I(GND_net), .O(led[0]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[75:78])
    FD1S3IX _add_1_25_e2_i0_i16 (.D(counter_32__N_34[16]), .CK(clk_100mhz), 
            .CD(n249), .Q(n119));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i16.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i4 (.D(counter_32__N_34[4]), .CK(clk_100mhz), 
            .CD(n249), .Q(n155));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i4.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i15 (.D(counter_32__N_34[15]), .CK(clk_100mhz), 
            .CD(n249), .Q(n122));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i15.GSR = "ENABLED";
    OB led_pad_1 (.I(GND_net), .O(led[1]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[75:78])
    FD1S3IX _add_1_25_e2_i0_i14 (.D(counter_32__N_34[14]), .CK(clk_100mhz), 
            .CD(n249), .Q(n125));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i14.GSR = "ENABLED";
    OB led_pad_2 (.I(n219), .O(led[2]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[75:78])
    OB led_pad_3 (.I(GND_net), .O(led[3]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[75:78])
    OB led_pad_4 (.I(GND_net), .O(led[4]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[75:78])
    FD1S3IX _add_1_25_e2_i0_i13 (.D(counter_32__N_34[13]), .CK(clk_100mhz), 
            .CD(n249), .Q(n128));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i13.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i12 (.D(counter_32__N_34[12]), .CK(clk_100mhz), 
            .CD(n249), .Q(n131));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i12.GSR = "ENABLED";
    OB led_pad_5 (.I(GND_net), .O(led[5]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[75:78])
    FD1S3IX _add_1_25_e2_i0_i11 (.D(counter_32__N_34[11]), .CK(clk_100mhz), 
            .CD(n249), .Q(n134));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i11.GSR = "ENABLED";
    OB led_pad_6 (.I(GND_net), .O(led[6]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[75:78])
    FD1S3IX _add_1_25_e2_i0_i10 (.D(counter_32__N_34[10]), .CK(clk_100mhz), 
            .CD(n249), .Q(n137));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i10.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i9 (.D(counter_32__N_34[9]), .CK(clk_100mhz), 
            .CD(n249), .Q(n140));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i9.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i8 (.D(counter_32__N_34[8]), .CK(clk_100mhz), 
            .CD(n249), .Q(n143));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i8.GSR = "ENABLED";
    OB led_pad_7 (.I(n219), .O(led[7]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[75:78])
    OB gp_pad_0 (.I(GND_net), .O(gp[0]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    OB gp_pad_1 (.I(GND_net), .O(gp[1]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    OB gp_pad_2 (.I(GND_net), .O(gp[2]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    FD1S3IX _add_1_25_e2_i0_i7 (.D(counter_32__N_34[7]), .CK(clk_100mhz), 
            .CD(n249), .Q(n146));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i7.GSR = "ENABLED";
    OB gp_pad_3 (.I(GND_net), .O(gp[3]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    OB gp_pad_4 (.I(GND_net), .O(gp[4]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    OB gp_pad_5 (.I(GND_net), .O(gp[5]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    CCU2C _add_1_25_add_4_3 (.A0(n164), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n161), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n298), 
          .COUT(n299), .S0(counter_32__N_34[1]), .S1(counter_32__N_34[2]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_3.INJECT1_1 = "NO";
    FD1S3IX _add_1_25_e2_i0_i6 (.D(counter_32__N_34[6]), .CK(clk_100mhz), 
            .CD(n249), .Q(n149));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i6.GSR = "ENABLED";
    FD1S3IX _add_1_25_e2_i0_i5 (.D(counter_32__N_34[5]), .CK(clk_100mhz), 
            .CD(n249), .Q(n152));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i5.GSR = "ENABLED";
    OB gp_pad_6 (.I(GND_net), .O(gp[6]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    OB gp_pad_7 (.I(GND_net), .O(gp[7]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    OB gp_pad_8 (.I(GND_net), .O(gp[8]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    FD1S3IX _add_1_25_e2_i0_i2 (.D(counter_32__N_34[2]), .CK(clk_100mhz), 
            .CD(n249), .Q(n161));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i2.GSR = "ENABLED";
    OB gp_pad_9 (.I(GND_net), .O(gp[9]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    FD1S3IX _add_1_25_e2_i0_i1 (.D(counter_32__N_34[1]), .CK(clk_100mhz), 
            .CD(n249), .Q(n164));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i1.GSR = "ENABLED";
    CCU2C add_65_5 (.A0(counter_32__N_34[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n350), .COUT(n351));
    defparam add_65_5.INIT0 = 16'haaa5;
    defparam add_65_5.INIT1 = 16'h5555;
    defparam add_65_5.INJECT1_0 = "NO";
    defparam add_65_5.INJECT1_1 = "NO";
    OB gp_pad_10 (.I(GND_net), .O(gp[10]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    CCU2C add_65_31 (.A0(counter_32__N_34[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n363), .COUT(n364));
    defparam add_65_31.INIT0 = 16'h5555;
    defparam add_65_31.INIT1 = 16'h5555;
    defparam add_65_31.INJECT1_0 = "NO";
    defparam add_65_31.INJECT1_1 = "NO";
    CCU2C add_65_3 (.A0(counter_32__N_34[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n349), .COUT(n350));
    defparam add_65_3.INIT0 = 16'haaa5;
    defparam add_65_3.INIT1 = 16'h5555;
    defparam add_65_3.INJECT1_0 = "NO";
    defparam add_65_3.INJECT1_1 = "NO";
    OB gp_pad_11 (.I(GND_net), .O(gp[11]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    OB gp_pad_12 (.I(GND_net), .O(gp[12]));   // e:/projects/fpga/learning/epaper/topmodule.v(19[59:61])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i57_1_lut (.A(cout), .Z(n249)) /* synthesis lut_function=(!(A)) */ ;
    defparam i57_1_lut.init = 16'h5555;
    VLO i1 (.Z(GND_net));
    CCU2C add_65_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter_32__N_34[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n349));
    defparam add_65_1.INIT0 = 16'h0000;
    defparam add_65_1.INIT1 = 16'haaaf;
    defparam add_65_1.INJECT1_0 = "NO";
    defparam add_65_1.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_33 (.A0(n74), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n71), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n313), 
          .S0(counter_32__N_34[31]), .S1(counter_32__N_34[32]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_33.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_33.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_33.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_33.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_31 (.A0(n80), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n77), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n312), 
          .COUT(n313), .S0(counter_32__N_34[29]), .S1(counter_32__N_34[30]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_31.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_31.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_31.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_31.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_29 (.A0(n86), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n83), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n311), 
          .COUT(n312), .S0(counter_32__N_34[27]), .S1(counter_32__N_34[28]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_29.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_29.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_29.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_29.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_27 (.A0(n92), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n89), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n310), 
          .COUT(n311), .S0(counter_32__N_34[25]), .S1(counter_32__N_34[26]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_27.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_27.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_27.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_27.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_25 (.A0(n98), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n95), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n309), 
          .COUT(n310), .S0(counter_32__N_34[23]), .S1(counter_32__N_34[24]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_25.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_25.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_25.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_25.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_23 (.A0(n104), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n101), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n308), 
          .COUT(n309), .S0(counter_32__N_34[21]), .S1(counter_32__N_34[22]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_23.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_23.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_23.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_21 (.A0(n110), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n107), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n307), 
          .COUT(n308), .S0(counter_32__N_34[19]), .S1(counter_32__N_34[20]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_21.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_21.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_21.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_19 (.A0(n116), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n113), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n306), 
          .COUT(n307), .S0(counter_32__N_34[17]), .S1(counter_32__N_34[18]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_19.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_19.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_19.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_17 (.A0(n122), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n119), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n305), 
          .COUT(n306), .S0(counter_32__N_34[15]), .S1(counter_32__N_34[16]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_17.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_15 (.A0(n128), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n125), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n304), 
          .COUT(n305), .S0(counter_32__N_34[13]), .S1(counter_32__N_34[14]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_15.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_13 (.A0(n134), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n131), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n303), 
          .COUT(n304), .S0(counter_32__N_34[11]), .S1(counter_32__N_34[12]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_13.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_11 (.A0(n140), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n137), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n302), 
          .COUT(n303), .S0(counter_32__N_34[9]), .S1(counter_32__N_34[10]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_9 (.A0(n146), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n143), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n301), 
          .COUT(n302), .S0(counter_32__N_34[7]), .S1(counter_32__N_34[8]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_7 (.A0(n152), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n149), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n300), 
          .COUT(n301), .S0(counter_32__N_34[5]), .S1(counter_32__N_34[6]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n167), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n298), .S1(counter_32__N_34[0]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_25_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_25_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_25_add_4_5 (.A0(n158), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n155), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n299), 
          .COUT(n300), .S0(counter_32__N_34[3]), .S1(counter_32__N_34[4]));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_25_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_25_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_25_add_4_5.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX _add_1_25_e2_i0_i32 (.D(counter_32__N_34[32]), .CK(clk_100mhz), 
            .CD(n249), .Q(n71));   // e:/projects/fpga/learning/epaper/clocks.v(9[14:25])
    defparam _add_1_25_e2_i0_i32.GSR = "ENABLED";
    CCU2C add_65_33 (.A0(counter_32__N_34[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_32__N_34[32]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n364), .COUT(n365));
    defparam add_65_33.INIT0 = 16'h5555;
    defparam add_65_33.INIT1 = 16'h5555;
    defparam add_65_33.INJECT1_0 = "NO";
    defparam add_65_33.INJECT1_1 = "NO";
    CCU2C add_65_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n365), 
          .S0(cout));
    defparam add_65_cout.INIT0 = 16'h0000;
    defparam add_65_cout.INIT1 = 16'h0000;
    defparam add_65_cout.INJECT1_0 = "NO";
    defparam add_65_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module pll
//

module pll (clk_100mhz, buf_CLKI, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_100mhz;
    input buf_CLKI;
    input GND_net;
    
    wire clk_100mhz /* synthesis is_clock=1, SET_AS_NETWORK=clk_100mhz */ ;   // e:/projects/fpga/learning/epaper/topmodule.v(20[7:17])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // e:/projects/fpga/learning/epaper/pll/pll.v(15[10:18])
    
    EHXPLLL PLLInst_0 (.CLKI(buf_CLKI), .CLKFB(clk_100mhz), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(clk_100mhz)) /* synthesis FREQUENCY_PIN_CLKOP="100.000000", FREQUENCY_PIN_CLKI="25.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=34, LSE_LLINE=26, LSE_RLINE=26 */ ;   // e:/projects/fpga/learning/epaper/topmodule.v(26[6:34])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 4;
    defparam PLLInst_0.CLKOP_DIV = 6;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 5;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module clockDivider
//

module clockDivider (n219, clk_100mhz, cout) /* synthesis syn_module_defined=1 */ ;
    output n219;
    input clk_100mhz;
    input cout;
    
    wire clk_100mhz /* synthesis is_clock=1, SET_AS_NETWORK=clk_100mhz */ ;   // e:/projects/fpga/learning/epaper/topmodule.v(20[7:17])
    
    wire n387;
    
    FD1S3AX out_12 (.D(n387), .CK(clk_100mhz), .Q(n219)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=46, LSE_LLINE=27, LSE_RLINE=27 */ ;   // e:/projects/fpga/learning/epaper/clocks.v(7[9] 16[6])
    defparam out_12.GSR = "ENABLED";
    LUT4 i85_2_lut (.A(n219), .B(cout), .Z(n387)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/projects/fpga/learning/epaper/clocks.v(7[9] 16[6])
    defparam i85_2_lut.init = 16'h9999;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

