
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.12.0.240.2

-- ldbanno -n VHDL -o epaper_impl1_mapvho.vho -w -neg -gui -msgset E:/Projects/FPGA/Learning/epaper/promote.xml epaper_impl1_map.ncd 
-- Netlist created on Wed Jan 18 22:36:44 2023
-- Netlist written on Wed Jan 18 22:36:53 2023
-- Design is for device LFE5U-12F
-- Design is for package CABGA381
-- Design is for performance grade 6

-- entity sapiobuf
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf : ENTITY IS TRUE;

  end sapiobuf;

  architecture Structure of sapiobuf is
  begin
    INST1: IB
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity clk_25mhzB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity clk_25mhzB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "clk_25mhzB";

      tipd_clk25mhz  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_clk25mhz_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_clk25mhz 	: VitalDelayType := 0 ns;
      tpw_clk25mhz_posedge	: VitalDelayType := 0 ns;
      tpw_clk25mhz_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; clk25mhz: in Std_logic);

    ATTRIBUTE Vital_Level0 OF clk_25mhzB : ENTITY IS TRUE;

  end clk_25mhzB;

  architecture Structure of clk_25mhzB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal clk25mhz_ipd 	: std_logic := 'X';

    component sapiobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Inst1_IB: sapiobuf
      port map (Z=>PADDI_out, PAD=>clk25mhz_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(clk25mhz_ipd, clk25mhz, tipd_clk25mhz);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, clk25mhz_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_clk25mhz_clk25mhz          	: x01 := '0';
    VARIABLE periodcheckinfo_clk25mhz	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => clk25mhz_ipd,
        TestSignalName => "clk25mhz",
        Period => tperiod_clk25mhz,
        PulseWidthHigh => tpw_clk25mhz_posedge,
        PulseWidthLow => tpw_clk25mhz_negedge,
        PeriodData => periodcheckinfo_clk25mhz,
        Violation => tviol_clk25mhz_clk25mhz,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => clk25mhz_ipd'last_event,
                           PathDelay => tpd_clk25mhz_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0001
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0001 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0001 : ENTITY IS TRUE;

  end sapiobuf0001;

  architecture Structure of sapiobuf0001 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity btn_4_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity btn_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "btn_4_B";

      tipd_btn4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_btn4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_btn4 	: VitalDelayType := 0 ns;
      tpw_btn4_posedge	: VitalDelayType := 0 ns;
      tpw_btn4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; btn4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF btn_4_B : ENTITY IS TRUE;

  end btn_4_B;

  architecture Structure of btn_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal btn4_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    led_c_4_pad: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>btn4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(btn4_ipd, btn4, tipd_btn4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, btn4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_btn4_btn4          	: x01 := '0';
    VARIABLE periodcheckinfo_btn4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => btn4_ipd,
        TestSignalName => "btn4",
        Period => tperiod_btn4,
        PulseWidthHigh => tpw_btn4_posedge,
        PulseWidthLow => tpw_btn4_negedge,
        PeriodData => periodcheckinfo_btn4,
        Violation => tviol_btn4_btn4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => btn4_ipd'last_event,
                           PathDelay => tpd_btn4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0002
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0002 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0002 : ENTITY IS TRUE;

  end sapiobuf0002;

  architecture Structure of sapiobuf0002 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity led_0_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity led_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_0_B : ENTITY IS TRUE;

  end led_0_B;

  architecture Structure of led_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led0_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    led_pad_0: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>led0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led0_out)
    VARIABLE led0_zd         	: std_logic := 'X';
    VARIABLE led0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led0_zd 	:= led0_out;

    VitalPathDelay01 (
      OutSignal => led0, OutSignalName => "led0", OutTemp => led0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led0,
                           PathCondition => TRUE)),
      GlitchData => led0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led_1_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity led_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_1_B : ENTITY IS TRUE;

  end led_1_B;

  architecture Structure of led_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led1_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    led_pad_1: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>led1_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led1_out)
    VARIABLE led1_zd         	: std_logic := 'X';
    VARIABLE led1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led1_zd 	:= led1_out;

    VitalPathDelay01 (
      OutSignal => led1, OutSignalName => "led1", OutTemp => led1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led1,
                           PathCondition => TRUE)),
      GlitchData => led1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led_2_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity led_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_2_B : ENTITY IS TRUE;

  end led_2_B;

  architecture Structure of led_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led2_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    led_pad_2: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>led2_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led2_out)
    VARIABLE led2_zd         	: std_logic := 'X';
    VARIABLE led2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led2_zd 	:= led2_out;

    VitalPathDelay01 (
      OutSignal => led2, OutSignalName => "led2", OutTemp => led2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led2,
                           PathCondition => TRUE)),
      GlitchData => led2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity gnd
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity led_3_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity led_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_3_B");

    port (led3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_3_B : ENTITY IS TRUE;

  end led_3_B;

  architecture Structure of led_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal led3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_3: sapiobuf0002
      port map (I=>GNDI, PAD=>led3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (led3_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led3 	<= led3_out;


    END PROCESS;

  end Structure;

-- entity led_4_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity led_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_4_B");

    port (led4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_4_B : ENTITY IS TRUE;

  end led_4_B;

  architecture Structure of led_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal led4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_4: sapiobuf0002
      port map (I=>GNDI, PAD=>led4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (led4_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led4 	<= led4_out;


    END PROCESS;

  end Structure;

-- entity led_5_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity led_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_5_B");

    port (led5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_5_B : ENTITY IS TRUE;

  end led_5_B;

  architecture Structure of led_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal led5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_5: sapiobuf0002
      port map (I=>GNDI, PAD=>led5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (led5_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led5 	<= led5_out;


    END PROCESS;

  end Structure;

-- entity led_6_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity led_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_6_B");

    port (led6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_6_B : ENTITY IS TRUE;

  end led_6_B;

  architecture Structure of led_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal led6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_6: sapiobuf0002
      port map (I=>GNDI, PAD=>led6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (led6_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led6 	<= led6_out;


    END PROCESS;

  end Structure;

-- entity led_7_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity led_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_7_B");

    port (led7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_7_B : ENTITY IS TRUE;

  end led_7_B;

  architecture Structure of led_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal led7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_7: sapiobuf0002
      port map (I=>GNDI, PAD=>led7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (led7_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led7 	<= led7_out;


    END PROCESS;

  end Structure;

-- entity gp_0_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_gp0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; gp0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_0_B : ENTITY IS TRUE;

  end gp_0_B;

  architecture Structure of gp_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal gp0_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    gp_pad_0: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>gp0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, gp0_out)
    VARIABLE gp0_zd         	: std_logic := 'X';
    VARIABLE gp0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp0_zd 	:= gp0_out;

    VitalPathDelay01 (
      OutSignal => gp0, OutSignalName => "gp0", OutTemp => gp0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_gp0,
                           PathCondition => TRUE)),
      GlitchData => gp0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity gp_1_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_gp1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; gp1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_1_B : ENTITY IS TRUE;

  end gp_1_B;

  architecture Structure of gp_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal gp1_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    gp_pad_1: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>gp1_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, gp1_out)
    VARIABLE gp1_zd         	: std_logic := 'X';
    VARIABLE gp1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp1_zd 	:= gp1_out;

    VitalPathDelay01 (
      OutSignal => gp1, OutSignalName => "gp1", OutTemp => gp1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_gp1,
                           PathCondition => TRUE)),
      GlitchData => gp1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity gp_2_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_gp2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; gp2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_2_B : ENTITY IS TRUE;

  end gp_2_B;

  architecture Structure of gp_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal gp2_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    gp_pad_2: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>gp2_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, gp2_out)
    VARIABLE gp2_zd         	: std_logic := 'X';
    VARIABLE gp2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp2_zd 	:= gp2_out;

    VitalPathDelay01 (
      OutSignal => gp2, OutSignalName => "gp2", OutTemp => gp2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_gp2,
                           PathCondition => TRUE)),
      GlitchData => gp2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity gp_3_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_gp3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; gp3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_3_B : ENTITY IS TRUE;

  end gp_3_B;

  architecture Structure of gp_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal gp3_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    gp_pad_3: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>gp3_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, gp3_out)
    VARIABLE gp3_zd         	: std_logic := 'X';
    VARIABLE gp3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp3_zd 	:= gp3_out;

    VitalPathDelay01 (
      OutSignal => gp3, OutSignalName => "gp3", OutTemp => gp3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_gp3,
                           PathCondition => TRUE)),
      GlitchData => gp3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity gp_4_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_gp4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; gp4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_4_B : ENTITY IS TRUE;

  end gp_4_B;

  architecture Structure of gp_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal gp4_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    gp_pad_4: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>gp4_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, gp4_out)
    VARIABLE gp4_zd         	: std_logic := 'X';
    VARIABLE gp4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp4_zd 	:= gp4_out;

    VitalPathDelay01 (
      OutSignal => gp4, OutSignalName => "gp4", OutTemp => gp4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_gp4,
                           PathCondition => TRUE)),
      GlitchData => gp4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity gp_5_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_5_B");

    port (gp5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_5_B : ENTITY IS TRUE;

  end gp_5_B;

  architecture Structure of gp_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal gp5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    gp_pad_5: sapiobuf0002
      port map (I=>GNDI, PAD=>gp5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (gp5_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp5 	<= gp5_out;


    END PROCESS;

  end Structure;

-- entity gp_6_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_6_B");

    port (gp6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_6_B : ENTITY IS TRUE;

  end gp_6_B;

  architecture Structure of gp_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal gp6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    gp_pad_6: sapiobuf0002
      port map (I=>GNDI, PAD=>gp6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (gp6_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp6 	<= gp6_out;


    END PROCESS;

  end Structure;

-- entity gp_7_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_7_B");

    port (gp7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_7_B : ENTITY IS TRUE;

  end gp_7_B;

  architecture Structure of gp_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal gp7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    gp_pad_7: sapiobuf0002
      port map (I=>GNDI, PAD=>gp7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (gp7_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp7 	<= gp7_out;


    END PROCESS;

  end Structure;

-- entity gp_8_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_8_B");

    port (gp8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_8_B : ENTITY IS TRUE;

  end gp_8_B;

  architecture Structure of gp_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal gp8_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    gp_pad_8: sapiobuf0002
      port map (I=>GNDI, PAD=>gp8_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (gp8_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp8 	<= gp8_out;


    END PROCESS;

  end Structure;

-- entity gp_9_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_9_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_9_B");

    port (gp9: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_9_B : ENTITY IS TRUE;

  end gp_9_B;

  architecture Structure of gp_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal gp9_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    gp_pad_9: sapiobuf0002
      port map (I=>GNDI, PAD=>gp9_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (gp9_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp9 	<= gp9_out;


    END PROCESS;

  end Structure;

-- entity gp_10_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_10_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_10_B");

    port (gp10: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_10_B : ENTITY IS TRUE;

  end gp_10_B;

  architecture Structure of gp_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal gp10_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    gp_pad_10: sapiobuf0002
      port map (I=>GNDI, PAD=>gp10_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (gp10_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp10 	<= gp10_out;


    END PROCESS;

  end Structure;

-- entity gp_11_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_11_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_11_B");

    port (gp11: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_11_B : ENTITY IS TRUE;

  end gp_11_B;

  architecture Structure of gp_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal gp11_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    gp_pad_11: sapiobuf0002
      port map (I=>GNDI, PAD=>gp11_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (gp11_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp11 	<= gp11_out;


    END PROCESS;

  end Structure;

-- entity gp_12_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gp_12_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "gp_12_B");

    port (gp12: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gp_12_B : ENTITY IS TRUE;

  end gp_12_B;

  architecture Structure of gp_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal gp12_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    gp_pad_12: sapiobuf0002
      port map (I=>GNDI, PAD=>gp12_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (gp12_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    gp12 	<= gp12_out;


    END PROCESS;

  end Structure;

-- entity EHXPLLLB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity EHXPLLLB is
    port (CLKI: in Std_logic; CLKFB: in Std_logic; PHASESEL1: in Std_logic; 
          PHASESEL0: in Std_logic; PHASEDIR: in Std_logic; 
          PHASESTEP: in Std_logic; PHASELOADREG: in Std_logic; 
          STDBY: in Std_logic; PLLWAKESYNC: in Std_logic; RST: in Std_logic; 
          ENCLKOP: in Std_logic; ENCLKOS: in Std_logic; ENCLKOS2: in Std_logic; 
          ENCLKOS3: in Std_logic; CLKOP: out Std_logic; CLKOS: out Std_logic; 
          CLKOS2: out Std_logic; CLKOS3: out Std_logic; LOCK: out Std_logic; 
          INTLOCK: out Std_logic; REFCLK: out Std_logic; 
          CLKINTFB: out Std_logic);



  end EHXPLLLB;

  architecture Structure of EHXPLLLB is
  begin
    INST10: EHXPLLL
      generic map (CLKFB_DIV => 4, CLKI_DIV => 1, CLKOP_CPHASE => 5, 
                   CLKOP_DIV => 6, CLKOP_ENABLE => "ENABLED", 
                   CLKOP_FPHASE => 0, CLKOP_TRIM_DELAY => 0, 
                   CLKOP_TRIM_POL => "FALLING", CLKOS2_CPHASE => 0, 
                   CLKOS2_DIV => 1, CLKOS2_ENABLE => "DISABLED", 
                   CLKOS2_FPHASE => 0, CLKOS3_CPHASE => 0, CLKOS3_DIV => 1, 
                   CLKOS3_ENABLE => "DISABLED", CLKOS3_FPHASE => 0, 
                   CLKOS_CPHASE => 0, CLKOS_DIV => 1, 
                   CLKOS_ENABLE => "DISABLED", CLKOS_FPHASE => 0, 
                   CLKOS_TRIM_DELAY => 0, CLKOS_TRIM_POL => "FALLING", 
                   DPHASE_SOURCE => "DISABLED", FEEDBK_PATH => "CLKOP", 
                   INTFB_WAKE => "DISABLED", INT_LOCK_STICKY => "ENABLED", 
                   OUTDIVIDER_MUXA => "DIVA", OUTDIVIDER_MUXB => "DIVB", 
                   OUTDIVIDER_MUXC => "DIVC", OUTDIVIDER_MUXD => "DIVD", 
                   PLLRST_ENA => "DISABLED", PLL_LOCK_DELAY => 200, 
                   PLL_LOCK_MODE => 0, REFIN_RESET => "DISABLED", 
                   STDBY_ENABLE => "DISABLED", SYNC_ENABLE => "DISABLED")
      port map (CLKI=>CLKI, CLKFB=>CLKFB, PHASESEL1=>PHASESEL1, 
                PHASESEL0=>PHASESEL0, PHASEDIR=>PHASEDIR, PHASESTEP=>PHASESTEP, 
                PHASELOADREG=>PHASELOADREG, STDBY=>STDBY, 
                PLLWAKESYNC=>PLLWAKESYNC, RST=>RST, ENCLKOP=>ENCLKOP, 
                ENCLKOS=>ENCLKOS, ENCLKOS2=>ENCLKOS2, ENCLKOS3=>ENCLKOS3, 
                CLKOP=>CLKOP, CLKOS=>CLKOS, CLKOS2=>CLKOS2, CLKOS3=>CLKOS3, 
                LOCK=>LOCK, INTLOCK=>INTLOCK, REFCLK=>REFCLK, 
                CLKINTFB=>CLKINTFB);
  end Structure;

-- entity myPll_PLLInst_0
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity myPll_PLLInst_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "myPll_PLLInst_0";

      tipd_CLKI  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKFB  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_STDBY  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKI_CLKOP	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKFB_CLKOP	 : VitalDelayType01 := (0 ns, 0 ns));

    port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
          CLKOP: out Std_logic);



  end myPll_PLLInst_0;

  architecture Structure of myPll_PLLInst_0 is
    signal CLKI_ipd 	: std_logic := 'X';
    signal CLKFB_ipd 	: std_logic := 'X';
    signal STDBY_ipd 	: std_logic := 'X';
    signal CLKOP_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component EHXPLLLB
      port (CLKI: in Std_logic; CLKFB: in Std_logic; PHASESEL1: in Std_logic; 
            PHASESEL0: in Std_logic; PHASEDIR: in Std_logic; 
            PHASESTEP: in Std_logic; PHASELOADREG: in Std_logic; 
            STDBY: in Std_logic; PLLWAKESYNC: in Std_logic; RST: in Std_logic; 
            ENCLKOP: in Std_logic; ENCLKOS: in Std_logic; 
            ENCLKOS2: in Std_logic; ENCLKOS3: in Std_logic; 
            CLKOP: out Std_logic; CLKOS: out Std_logic; CLKOS2: out Std_logic; 
            CLKOS3: out Std_logic; LOCK: out Std_logic; INTLOCK: out Std_logic; 
            REFCLK: out Std_logic; CLKINTFB: out Std_logic);
    end component;
  begin
    myPll_PLLInst_0_EHXPLLL: EHXPLLLB
      port map (CLKI=>CLKI_ipd, CLKFB=>CLKFB_ipd, PHASESEL1=>GNDI, 
                PHASESEL0=>GNDI, PHASEDIR=>GNDI, PHASESTEP=>GNDI, 
                PHASELOADREG=>GNDI, STDBY=>STDBY_ipd, PLLWAKESYNC=>GNDI, 
                RST=>GNDI, ENCLKOP=>GNDI, ENCLKOS=>GNDI, ENCLKOS2=>GNDI, 
                ENCLKOS3=>GNDI, CLKOP=>CLKOP_out, CLKOS=>open, CLKOS2=>open, 
                CLKOS3=>open, LOCK=>open, INTLOCK=>open, REFCLK=>open, 
                CLKINTFB=>open);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(CLKI_ipd, CLKI, tipd_CLKI);
      VitalWireDelay(CLKFB_ipd, CLKFB, tipd_CLKFB);
      VitalWireDelay(STDBY_ipd, STDBY, tipd_STDBY);
    END BLOCK;

    VitalBehavior : PROCESS (CLKI_ipd, CLKFB_ipd, STDBY_ipd, CLKOP_out)
    VARIABLE CLKOP_zd         	: std_logic := 'X';
    VARIABLE CLKOP_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    CLKOP_zd 	:= CLKOP_out;

    VitalPathDelay01 (
      OutSignal => CLKOP, OutSignalName => "CLKOP", OutTemp => CLKOP_zd,
      Paths      => (0 => (InputChangeTime => CLKI_ipd'last_event,
                           PathDelay => tpd_CLKI_CLKOP,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => CLKFB_ipd'last_event,
                           PathDelay => tpd_CLKFB_CLKOP,
                           PathCondition => TRUE)),
      GlitchData => CLKOP_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity top is
    port (clk_25mhz: in Std_logic; btn: in Std_logic_vector (4 downto 3); 
          gp: out Std_logic_vector (12 downto 0); 
          led: out Std_logic_vector (7 downto 0));



  end top;

  architecture Structure of top is
    signal myLeModule_counter_12: Std_logic;
    signal myLeModule_n431: Std_logic;
    signal myLeModule_n810: Std_logic;
    signal myLeModule_counter_5: Std_logic;
    signal myLeModule_counter_11: Std_logic;
    signal myLeModule_n158: Std_logic;
    signal myLeModule_n159: Std_logic;
    signal mySphModule_clock_N_362: Std_logic;
    signal myLeModule_n1070: Std_logic;
    signal myLeModule_n1071: Std_logic;
    signal myLeModule_counter_10: Std_logic;
    signal myLeModule_counter_9: Std_logic;
    signal myLeModule_n160: Std_logic;
    signal myLeModule_n161: Std_logic;
    signal myLeModule_n1069: Std_logic;
    signal myLeModule_counter_8: Std_logic;
    signal myLeModule_counter_7: Std_logic;
    signal myLeModule_n7: Std_logic;
    signal myLeModule_n3066: Std_logic;
    signal myLeModule_counter_6: Std_logic;
    signal myLeModule_n162: Std_logic;
    signal myLeModule_n163: Std_logic;
    signal myLeModule_n1068: Std_logic;
    signal myLeModule_n1697: Std_logic;
    signal myLeModule_n3071: Std_logic;
    signal myLeModule_n164: Std_logic;
    signal myLeModule_n165: Std_logic;
    signal myLeModule_n1067: Std_logic;
    signal myLeModule_counter_4: Std_logic;
    signal myLeModule_counter_3: Std_logic;
    signal myLeModule_n166: Std_logic;
    signal myLeModule_n167: Std_logic;
    signal myLeModule_n1066: Std_logic;
    signal myLeModule_counter_2: Std_logic;
    signal myLeModule_n3065: Std_logic;
    signal myLeModule_counter_0: Std_logic;
    signal myLeModule_counter_1: Std_logic;
    signal myLeModule_n168: Std_logic;
    signal myLeModule_n169: Std_logic;
    signal myLeModule_n1065: Std_logic;
    signal myLeModule_n170: Std_logic;
    signal myLeModule_counter_32: Std_logic;
    signal myLeModule_counter_31: Std_logic;
    signal myLeModule_n138: Std_logic;
    signal myLeModule_n139: Std_logic;
    signal myLeModule_n1080: Std_logic;
    signal myLeModule_counter_30: Std_logic;
    signal myLeModule_counter_29: Std_logic;
    signal myLeModule_n140: Std_logic;
    signal myLeModule_n141: Std_logic;
    signal myLeModule_n1079: Std_logic;
    signal myLeModule_counter_28: Std_logic;
    signal myLeModule_counter_27: Std_logic;
    signal myLeModule_n142: Std_logic;
    signal myLeModule_n143: Std_logic;
    signal myLeModule_n1078: Std_logic;
    signal myLeModule_counter_26: Std_logic;
    signal myLeModule_counter_25: Std_logic;
    signal myLeModule_n144: Std_logic;
    signal myLeModule_n145: Std_logic;
    signal myLeModule_n1077: Std_logic;
    signal myLeModule_counter_24: Std_logic;
    signal myLeModule_counter_23: Std_logic;
    signal myLeModule_n146: Std_logic;
    signal myLeModule_n147: Std_logic;
    signal myLeModule_n1076: Std_logic;
    signal myLeModule_counter_22: Std_logic;
    signal myLeModule_counter_21: Std_logic;
    signal myLeModule_n148: Std_logic;
    signal myLeModule_n149: Std_logic;
    signal myLeModule_n1075: Std_logic;
    signal myLeModule_counter_20: Std_logic;
    signal myLeModule_counter_19: Std_logic;
    signal myLeModule_n150: Std_logic;
    signal myLeModule_n151: Std_logic;
    signal myLeModule_n1074: Std_logic;
    signal myLeModule_counter_18: Std_logic;
    signal myLeModule_counter_17: Std_logic;
    signal myLeModule_n152: Std_logic;
    signal myLeModule_n153: Std_logic;
    signal myLeModule_n1073: Std_logic;
    signal myLeModule_counter_16: Std_logic;
    signal myLeModule_counter_15: Std_logic;
    signal myLeModule_n154: Std_logic;
    signal myLeModule_n155: Std_logic;
    signal myLeModule_n1072: Std_logic;
    signal myLeModule_counter_14: Std_logic;
    signal myLeModule_counter_13: Std_logic;
    signal myLeModule_n156: Std_logic;
    signal myLeModule_n157: Std_logic;
    signal mySpvModule_counter_32: Std_logic;
    signal mySpvModule_n419: Std_logic;
    signal mySpvModule_counter_4: Std_logic;
    signal mySpvModule_n806: Std_logic;
    signal mySpvModule_counter_31: Std_logic;
    signal mySpvModule_n138: Std_logic;
    signal mySpvModule_n139: Std_logic;
    signal mySpvModule_n1114: Std_logic;
    signal mySpvModule_counter_30: Std_logic;
    signal mySpvModule_counter_29: Std_logic;
    signal mySpvModule_n140: Std_logic;
    signal mySpvModule_n141: Std_logic;
    signal mySpvModule_n1113: Std_logic;
    signal mySpvModule_counter_28: Std_logic;
    signal mySpvModule_counter_27: Std_logic;
    signal mySpvModule_n142: Std_logic;
    signal mySpvModule_n143: Std_logic;
    signal mySpvModule_n1112: Std_logic;
    signal mySpvModule_counter_26: Std_logic;
    signal mySpvModule_counter_25: Std_logic;
    signal mySpvModule_n144: Std_logic;
    signal mySpvModule_n145: Std_logic;
    signal mySpvModule_n1111: Std_logic;
    signal mySpvModule_counter_24: Std_logic;
    signal mySpvModule_counter_23: Std_logic;
    signal mySpvModule_n146: Std_logic;
    signal mySpvModule_n147: Std_logic;
    signal mySpvModule_n1110: Std_logic;
    signal mySpvModule_counter_22: Std_logic;
    signal mySpvModule_counter_21: Std_logic;
    signal mySpvModule_n148: Std_logic;
    signal mySpvModule_n149: Std_logic;
    signal mySpvModule_n1109: Std_logic;
    signal mySpvModule_counter_20: Std_logic;
    signal mySpvModule_counter_19: Std_logic;
    signal mySpvModule_n150: Std_logic;
    signal mySpvModule_n151: Std_logic;
    signal mySpvModule_n1108: Std_logic;
    signal mySpvModule_counter_18: Std_logic;
    signal mySpvModule_counter_17: Std_logic;
    signal mySpvModule_n152: Std_logic;
    signal mySpvModule_n153: Std_logic;
    signal mySpvModule_n1107: Std_logic;
    signal mySpvModule_counter_16: Std_logic;
    signal mySpvModule_counter_15: Std_logic;
    signal mySpvModule_n154: Std_logic;
    signal mySpvModule_n155: Std_logic;
    signal mySpvModule_n1106: Std_logic;
    signal mySpvModule_counter_14: Std_logic;
    signal mySpvModule_counter_13: Std_logic;
    signal mySpvModule_n156: Std_logic;
    signal mySpvModule_n157: Std_logic;
    signal mySpvModule_n1105: Std_logic;
    signal mySpvModule_counter_12: Std_logic;
    signal mySpvModule_counter_11: Std_logic;
    signal mySpvModule_n158: Std_logic;
    signal mySpvModule_n159: Std_logic;
    signal mySpvModule_n1104: Std_logic;
    signal mySpvModule_counter_10: Std_logic;
    signal mySpvModule_counter_9: Std_logic;
    signal mySpvModule_n160: Std_logic;
    signal mySpvModule_n161: Std_logic;
    signal mySpvModule_n1103: Std_logic;
    signal mySpvModule_counter_8: Std_logic;
    signal mySpvModule_n4: Std_logic;
    signal mySpvModule_n64: Std_logic;
    signal mySpvModule_n1674: Std_logic;
    signal mySpvModule_counter_7: Std_logic;
    signal mySpvModule_n162: Std_logic;
    signal mySpvModule_n163: Std_logic;
    signal mySpvModule_n1102: Std_logic;
    signal mySpvModule_counter_6: Std_logic;
    signal mySpvModule_counter_5: Std_logic;
    signal mySpvModule_n164: Std_logic;
    signal mySpvModule_n165: Std_logic;
    signal mySpvModule_n1101: Std_logic;
    signal mySpvModule_n1715: Std_logic;
    signal mySpvModule_counter_3: Std_logic;
    signal mySpvModule_n166: Std_logic;
    signal mySpvModule_n167: Std_logic;
    signal mySpvModule_n1100: Std_logic;
    signal mySpvModule_counter_2: Std_logic;
    signal mySpvModule_counter_1: Std_logic;
    signal mySpvModule_n168: Std_logic;
    signal mySpvModule_n169: Std_logic;
    signal mySpvModule_n1099: Std_logic;
    signal mySpvModule_counter_0: Std_logic;
    signal mySpvModule_n170: Std_logic;
    signal counter_32_N_34_21: Std_logic;
    signal counter_32_N_34_20: Std_logic;
    signal n1041: Std_logic;
    signal n1042: Std_logic;
    signal n161: Std_logic;
    signal n164: Std_logic;
    signal counter_32_N_34_2: Std_logic;
    signal counter_32_N_34_1: Std_logic;
    signal cout: Std_logic;
    signal clk_100mhz: Std_logic;
    signal n1015: Std_logic;
    signal n1016: Std_logic;
    signal n137: Std_logic;
    signal n140: Std_logic;
    signal counter_32_N_34_10: Std_logic;
    signal counter_32_N_34_9: Std_logic;
    signal n1019: Std_logic;
    signal n1020: Std_logic;
    signal counter_32_N_34_19: Std_logic;
    signal counter_32_N_34_18: Std_logic;
    signal n1040: Std_logic;
    signal n107: Std_logic;
    signal n110: Std_logic;
    signal n1024: Std_logic;
    signal n1025: Std_logic;
    signal n113: Std_logic;
    signal n116: Std_logic;
    signal counter_32_N_34_17: Std_logic;
    signal n1023: Std_logic;
    signal counter_32_N_34_16: Std_logic;
    signal n1039: Std_logic;
    signal n89: Std_logic;
    signal n92: Std_logic;
    signal counter_32_N_34_26: Std_logic;
    signal counter_32_N_34_25: Std_logic;
    signal n1027: Std_logic;
    signal n1028: Std_logic;
    signal counter_32_N_34_15: Std_logic;
    signal counter_32_N_34_14: Std_logic;
    signal n1038: Std_logic;
    signal counter_32_N_34_13: Std_logic;
    signal counter_32_N_34_12: Std_logic;
    signal n1037: Std_logic;
    signal n1032: Std_logic;
    signal n71: Std_logic;
    signal n74: Std_logic;
    signal counter_32_N_34_32: Std_logic;
    signal counter_32_N_34_31: Std_logic;
    signal n1030: Std_logic;
    signal n77: Std_logic;
    signal n80: Std_logic;
    signal counter_32_N_34_30: Std_logic;
    signal counter_32_N_34_29: Std_logic;
    signal n1029: Std_logic;
    signal n1047: Std_logic;
    signal n95: Std_logic;
    signal n98: Std_logic;
    signal counter_32_N_34_24: Std_logic;
    signal counter_32_N_34_23: Std_logic;
    signal n1026: Std_logic;
    signal counter_32_N_34_11: Std_logic;
    signal n1036: Std_logic;
    signal n143: Std_logic;
    signal n146: Std_logic;
    signal counter_32_N_34_8: Std_logic;
    signal counter_32_N_34_7: Std_logic;
    signal n1018: Std_logic;
    signal n1035: Std_logic;
    signal n149: Std_logic;
    signal n152: Std_logic;
    signal counter_32_N_34_6: Std_logic;
    signal counter_32_N_34_5: Std_logic;
    signal n1017: Std_logic;
    signal n125: Std_logic;
    signal n128: Std_logic;
    signal n1021: Std_logic;
    signal n1022: Std_logic;
    signal n155: Std_logic;
    signal n158: Std_logic;
    signal counter_32_N_34_4: Std_logic;
    signal counter_32_N_34_3: Std_logic;
    signal n1046: Std_logic;
    signal counter_32_N_34_28: Std_logic;
    signal n1045: Std_logic;
    signal n83: Std_logic;
    signal n86: Std_logic;
    signal counter_32_N_34_27: Std_logic;
    signal n1034: Std_logic;
    signal n1044: Std_logic;
    signal n1033: Std_logic;
    signal n101: Std_logic;
    signal n104: Std_logic;
    signal counter_32_N_34_22: Std_logic;
    signal n131: Std_logic;
    signal n134: Std_logic;
    signal n1043: Std_logic;
    signal n119: Std_logic;
    signal n122: Std_logic;
    signal n167: Std_logic;
    signal counter_32_N_34_0: Std_logic;
    signal myCkvModule_counter_20: Std_logic;
    signal myCkvModule_n7: Std_logic;
    signal myCkvModule_n437: Std_logic;
    signal myCkvModule_n681: Std_logic;
    signal myCkvModule_counter_19: Std_logic;
    signal myCkvModule_n150: Std_logic;
    signal myCkvModule_n151: Std_logic;
    signal myCkvModule_n1091: Std_logic;
    signal myCkvModule_n1092: Std_logic;
    signal myCkvModule_counter_18: Std_logic;
    signal myCkvModule_counter_17: Std_logic;
    signal myCkvModule_n152: Std_logic;
    signal myCkvModule_n153: Std_logic;
    signal myCkvModule_n1090: Std_logic;
    signal myCkvModule_counter_0: Std_logic;
    signal myCkvModule_counter_2: Std_logic;
    signal myCkvModule_n170: Std_logic;
    signal myCkvModule_n1082: Std_logic;
    signal myCkvModule_counter_16: Std_logic;
    signal myCkvModule_counter_15: Std_logic;
    signal myCkvModule_n154: Std_logic;
    signal myCkvModule_n155: Std_logic;
    signal myCkvModule_n1089: Std_logic;
    signal myCkvModule_counter_14: Std_logic;
    signal myCkvModule_counter_13: Std_logic;
    signal myCkvModule_n156: Std_logic;
    signal myCkvModule_n157: Std_logic;
    signal myCkvModule_n1088: Std_logic;
    signal myCkvModule_counter_12: Std_logic;
    signal myCkvModule_counter_11: Std_logic;
    signal myCkvModule_n158: Std_logic;
    signal myCkvModule_n159: Std_logic;
    signal myCkvModule_n1087: Std_logic;
    signal myCkvModule_counter_10: Std_logic;
    signal myCkvModule_counter_9: Std_logic;
    signal myCkvModule_n160: Std_logic;
    signal myCkvModule_n161: Std_logic;
    signal myCkvModule_n1086: Std_logic;
    signal myCkvModule_counter_8: Std_logic;
    signal myCkvModule_counter_7: Std_logic;
    signal myCkvModule_n162: Std_logic;
    signal myCkvModule_n163: Std_logic;
    signal myCkvModule_n1085: Std_logic;
    signal myCkvModule_counter_6: Std_logic;
    signal myCkvModule_counter_5: Std_logic;
    signal myCkvModule_n1681: Std_logic;
    signal myCkvModule_n164: Std_logic;
    signal myCkvModule_n165: Std_logic;
    signal myCkvModule_n1084: Std_logic;
    signal myCkvModule_counter_4: Std_logic;
    signal myCkvModule_counter_3: Std_logic;
    signal myCkvModule_n166: Std_logic;
    signal myCkvModule_n167: Std_logic;
    signal myCkvModule_n1083: Std_logic;
    signal myCkvModule_counter_1: Std_logic;
    signal myCkvModule_n168: Std_logic;
    signal myCkvModule_n169: Std_logic;
    signal myCkvModule_counter_32: Std_logic;
    signal myCkvModule_counter_31: Std_logic;
    signal myCkvModule_n138: Std_logic;
    signal myCkvModule_n139: Std_logic;
    signal myCkvModule_n1097: Std_logic;
    signal myCkvModule_counter_30: Std_logic;
    signal myCkvModule_counter_29: Std_logic;
    signal myCkvModule_n140: Std_logic;
    signal myCkvModule_n141: Std_logic;
    signal myCkvModule_n1096: Std_logic;
    signal myCkvModule_counter_28: Std_logic;
    signal myCkvModule_counter_27: Std_logic;
    signal myCkvModule_n142: Std_logic;
    signal myCkvModule_n143: Std_logic;
    signal myCkvModule_n1095: Std_logic;
    signal myCkvModule_counter_26: Std_logic;
    signal myCkvModule_counter_25: Std_logic;
    signal myCkvModule_n144: Std_logic;
    signal myCkvModule_n145: Std_logic;
    signal myCkvModule_n1094: Std_logic;
    signal myCkvModule_counter_24: Std_logic;
    signal myCkvModule_counter_23: Std_logic;
    signal myCkvModule_n146: Std_logic;
    signal myCkvModule_n147: Std_logic;
    signal myCkvModule_n1093: Std_logic;
    signal myCkvModule_counter_22: Std_logic;
    signal myCkvModule_counter_21: Std_logic;
    signal myCkvModule_n148: Std_logic;
    signal myCkvModule_n149: Std_logic;
    signal mySphModule_counter_6: Std_logic;
    signal mySphModule_counter_2: Std_logic;
    signal mySphModule_n449: Std_logic;
    signal mySphModule_n4: Std_logic;
    signal mySphModule_counter_5: Std_logic;
    signal mySphModule_n407: Std_logic;
    signal mySphModule_n164: Std_logic;
    signal mySphModule_n165: Std_logic;
    signal mySphModule_n1050: Std_logic;
    signal mySphModule_n1051: Std_logic;
    signal mySphModule_counter_24: Std_logic;
    signal mySphModule_counter_23: Std_logic;
    signal mySphModule_n146: Std_logic;
    signal mySphModule_n147: Std_logic;
    signal mySphModule_n1059: Std_logic;
    signal mySphModule_n1060: Std_logic;
    signal mySphModule_counter_4: Std_logic;
    signal mySphModule_counter_3: Std_logic;
    signal mySphModule_n4_adj_402: Std_logic;
    signal mySphModule_n166: Std_logic;
    signal mySphModule_n167: Std_logic;
    signal mySphModule_n1049: Std_logic;
    signal mySphModule_counter_22: Std_logic;
    signal mySphModule_counter_21: Std_logic;
    signal mySphModule_n148: Std_logic;
    signal mySphModule_n149: Std_logic;
    signal mySphModule_n1058: Std_logic;
    signal mySphModule_counter_32: Std_logic;
    signal mySphModule_counter_31: Std_logic;
    signal mySphModule_n138: Std_logic;
    signal mySphModule_n139: Std_logic;
    signal mySphModule_n1063: Std_logic;
    signal mySphModule_counter_1: Std_logic;
    signal mySphModule_n168: Std_logic;
    signal mySphModule_n169: Std_logic;
    signal mySphModule_n1048: Std_logic;
    signal mySphModule_counter_20: Std_logic;
    signal mySphModule_counter_19: Std_logic;
    signal mySphModule_n150: Std_logic;
    signal mySphModule_n151: Std_logic;
    signal mySphModule_n1057: Std_logic;
    signal mySphModule_counter_0: Std_logic;
    signal mySphModule_n170: Std_logic;
    signal mySphModule_counter_18: Std_logic;
    signal mySphModule_counter_17: Std_logic;
    signal mySphModule_n152: Std_logic;
    signal mySphModule_n153: Std_logic;
    signal mySphModule_n1056: Std_logic;
    signal mySphModule_counter_16: Std_logic;
    signal mySphModule_counter_15: Std_logic;
    signal mySphModule_n154: Std_logic;
    signal mySphModule_n155: Std_logic;
    signal mySphModule_n1055: Std_logic;
    signal mySphModule_counter_14: Std_logic;
    signal mySphModule_counter_13: Std_logic;
    signal mySphModule_n156: Std_logic;
    signal mySphModule_n157: Std_logic;
    signal mySphModule_n1054: Std_logic;
    signal mySphModule_counter_30: Std_logic;
    signal mySphModule_counter_29: Std_logic;
    signal mySphModule_n140: Std_logic;
    signal mySphModule_n141: Std_logic;
    signal mySphModule_n1062: Std_logic;
    signal mySphModule_counter_12: Std_logic;
    signal mySphModule_counter_11: Std_logic;
    signal mySphModule_n158: Std_logic;
    signal mySphModule_n159: Std_logic;
    signal mySphModule_n1053: Std_logic;
    signal mySphModule_counter_10: Std_logic;
    signal mySphModule_counter_9: Std_logic;
    signal mySphModule_n160: Std_logic;
    signal mySphModule_n161: Std_logic;
    signal mySphModule_n1052: Std_logic;
    signal mySphModule_counter_28: Std_logic;
    signal mySphModule_counter_27: Std_logic;
    signal mySphModule_n142: Std_logic;
    signal mySphModule_n143: Std_logic;
    signal mySphModule_n1061: Std_logic;
    signal mySphModule_counter_26: Std_logic;
    signal mySphModule_counter_25: Std_logic;
    signal mySphModule_n144: Std_logic;
    signal mySphModule_n145: Std_logic;
    signal mySphModule_counter_8: Std_logic;
    signal mySphModule_counter_7: Std_logic;
    signal mySphModule_n162: Std_logic;
    signal mySphModule_n163: Std_logic;
    signal clk_divOut: Std_logic;
    signal clckDiv_n2736: Std_logic;
    signal mySpvModule_n2288: Std_logic;
    signal mySpvModule_n2290: Std_logic;
    signal mySpvModule_n2258: Std_logic;
    signal gp_c_1: Std_logic;
    signal mySpvModule_n2723: Std_logic;
    signal mySpvModule_n2538: Std_logic;
    signal mySpvModule_n1695: Std_logic;
    signal mySpvModule_n23: Std_logic;
    signal mySpvModule_spv_N_246: Std_logic;
    signal myLeModule_n2128: Std_logic;
    signal myLeModule_n2132: Std_logic;
    signal myLeModule_n1714: Std_logic;
    signal myLeModule_n2130: Std_logic;
    signal myLeModule_le_N_323: Std_logic;
    signal myLeModule_clock_N_362_enable_3: Std_logic;
    signal myLeModule_n402: Std_logic;
    signal gp_c_2: Std_logic;
    signal mySphModule_n2626: Std_logic;
    signal mySphModule_n2628: Std_logic;
    signal mySphModule_sph_N_397: Std_logic;
    signal mySphModule_n424: Std_logic;
    signal mySphModule_n2028: Std_logic;
    signal mySphModule_n2022: Std_logic;
    signal mySphModule_n2036: Std_logic;
    signal mySphModule_clock_N_362_enable_1: Std_logic;
    signal gp_c_3: Std_logic;
    signal myCkvModule_n45: Std_logic;
    signal myCkvModule_n2220: Std_logic;
    signal myCkvModule_n2228: Std_logic;
    signal myCkvModule_n2222: Std_logic;
    signal myCkvModule_n2236: Std_logic;
    signal myCkvModule_ckv_N_173: Std_logic;
    signal myCkvModule_clock_N_362_enable_2: Std_logic;
    signal myCkvModule_n65: Std_logic;
    signal n296: Std_logic;
    signal myLeModule_n45: Std_logic;
    signal myLeModule_n2374: Std_logic;
    signal myLeModule_n2378: Std_logic;
    signal myLeModule_n2368: Std_logic;
    signal myLeModule_n2096: Std_logic;
    signal myLeModule_n3072: Std_logic;
    signal myLeModule_n2484: Std_logic;
    signal myLeModule_n3078: Std_logic;
    signal myLeModule_n2174: Std_logic;
    signal myLeModule_n2164: Std_logic;
    signal myLeModule_n2180: Std_logic;
    signal myLeModule_n2402: Std_logic;
    signal myLeModule_n2406: Std_logic;
    signal myLeModule_n2112: Std_logic;
    signal myLeModule_n2408: Std_logic;
    signal myLeModule_n2422: Std_logic;
    signal myLeModule_n2114: Std_logic;
    signal myLeModule_n2126: Std_logic;
    signal myLeModule_n2102: Std_logic;
    signal myLeModule_n2362: Std_logic;
    signal myLeModule_n3077: Std_logic;
    signal myLeModule_n28: Std_logic;
    signal myLeModule_n3075: Std_logic;
    signal myLeModule_n2104: Std_logic;
    signal myLeModule_n2412: Std_logic;
    signal myLeModule_n2418: Std_logic;
    signal myLeModule_n3067: Std_logic;
    signal myLeModule_n2364: Std_logic;
    signal myLeModule_n44: Std_logic;
    signal myLeModule_n2574: Std_logic;
    signal myLeModule_n2494: Std_logic;
    signal myLeModule_n3076: Std_logic;
    signal myLeModule_n2552: Std_logic;
    signal myLeModule_n2580: Std_logic;
    signal myLeModule_n2480: Std_logic;
    signal myLeModule_n2482: Std_logic;
    signal myLeModule_n2176: Std_logic;
    signal myLeModule_n2178: Std_logic;
    signal myLeModule_n2420: Std_logic;
    signal myLeModule_n2568: Std_logic;
    signal myLeModule_n2570: Std_logic;
    signal myLeModule_n2582: Std_logic;
    signal myLeModule_n2546: Std_logic;
    signal myLeModule_n2562: Std_logic;
    signal myLeModule_n2560: Std_logic;
    signal myLeModule_n2148: Std_logic;
    signal myLeModule_n2166: Std_logic;
    signal myLeModule_n2118: Std_logic;
    signal mySpvModule_n3081: Std_logic;
    signal mySpvModule_n1768: Std_logic;
    signal mySpvModule_n1772: Std_logic;
    signal mySpvModule_n2244: Std_logic;
    signal mySpvModule_n2246: Std_logic;
    signal mySpvModule_n2450: Std_logic;
    signal mySpvModule_n45: Std_logic;
    signal mySpvModule_n2454: Std_logic;
    signal mySpvModule_n1940: Std_logic;
    signal mySpvModule_n2452: Std_logic;
    signal mySpvModule_n2773: Std_logic;
    signal mySpvModule_n1920: Std_logic;
    signal mySpvModule_n1942: Std_logic;
    signal mySpvModule_n1948: Std_logic;
    signal mySpvModule_n1946: Std_logic;
    signal mySpvModule_n2695: Std_logic;
    signal mySpvModule_n2516: Std_logic;
    signal mySpvModule_n2286: Std_logic;
    signal mySpvModule_n2713: Std_logic;
    signal mySpvModule_n2703: Std_logic;
    signal mySpvModule_n2721: Std_logic;
    signal mySpvModule_n2250: Std_logic;
    signal mySpvModule_n2772: Std_logic;
    signal mySpvModule_n2270: Std_logic;
    signal mySpvModule_n2280: Std_logic;
    signal mySpvModule_n2276: Std_logic;
    signal mySpvModule_n2278: Std_logic;
    signal mySpvModule_n1930: Std_logic;
    signal mySpvModule_n2701: Std_logic;
    signal mySpvModule_n2715: Std_logic;
    signal mySpvModule_n1764: Std_logic;
    signal mySpvModule_n1756: Std_logic;
    signal mySpvModule_n1770: Std_logic;
    signal myCkvModule_n3070: Std_logic;
    signal myCkvModule_n2312: Std_logic;
    signal myCkvModule_n2322: Std_logic;
    signal myCkvModule_n2210: Std_logic;
    signal myCkvModule_n2202: Std_logic;
    signal myCkvModule_n2308: Std_logic;
    signal myCkvModule_n3079: Std_logic;
    signal myCkvModule_n2320: Std_logic;
    signal myCkvModule_n2326: Std_logic;
    signal myCkvModule_n2330: Std_logic;
    signal myCkvModule_n2652: Std_logic;
    signal myCkvModule_n2658: Std_logic;
    signal myCkvModule_n2666: Std_logic;
    signal myCkvModule_n2656: Std_logic;
    signal myCkvModule_n2672: Std_logic;
    signal myCkvModule_n2306: Std_logic;
    signal myCkvModule_n3080: Std_logic;
    signal myCkvModule_n1860: Std_logic;
    signal myCkvModule_n1864: Std_logic;
    signal myCkvModule_n683: Std_logic;
    signal myCkvModule_n1862: Std_logic;
    signal myCkvModule_n1836: Std_logic;
    signal myCkvModule_n1854: Std_logic;
    signal myCkvModule_n1856: Std_logic;
    signal myCkvModule_n1838: Std_logic;
    signal myCkvModule_n1842: Std_logic;
    signal myCkvModule_n1846: Std_logic;
    signal myCkvModule_n1830: Std_logic;
    signal myCkvModule_n2664: Std_logic;
    signal myCkvModule_n2650: Std_logic;
    signal myCkvModule_n2670: Std_logic;
    signal myCkvModule_n2654: Std_logic;
    signal myCkvModule_n1902: Std_logic;
    signal myCkvModule_n1908: Std_logic;
    signal myCkvModule_n1876: Std_logic;
    signal myCkvModule_n1894: Std_logic;
    signal myCkvModule_n1878: Std_logic;
    signal myCkvModule_n1890: Std_logic;
    signal myCkvModule_n2216: Std_logic;
    signal myCkvModule_n2204: Std_logic;
    signal myCkvModule_n2224: Std_logic;
    signal myCkvModule_n2212: Std_logic;
    signal myCkvModule_n2462: Std_logic;
    signal mySphModule_n2602: Std_logic;
    signal mySphModule_n2592: Std_logic;
    signal mySphModule_n2612: Std_logic;
    signal mySphModule_n1976: Std_logic;
    signal mySphModule_n2610: Std_logic;
    signal mySphModule_n43: Std_logic;
    signal mySphModule_n2614: Std_logic;
    signal mySphModule_n2618: Std_logic;
    signal mySphModule_n2048: Std_logic;
    signal mySphModule_n3073: Std_logic;
    signal mySphModule_n3083: Std_logic;
    signal mySphModule_n2084: Std_logic;
    signal mySphModule_n2600: Std_logic;
    signal mySphModule_n2604: Std_logic;
    signal mySphModule_n1954: Std_logic;
    signal mySphModule_n1968: Std_logic;
    signal mySphModule_n1978: Std_logic;
    signal mySphModule_n3069: Std_logic;
    signal mySphModule_n1800: Std_logic;
    signal mySphModule_n2064: Std_logic;
    signal mySphModule_n2072: Std_logic;
    signal mySphModule_n2082: Std_logic;
    signal mySphModule_n1792: Std_logic;
    signal mySphModule_n1812: Std_logic;
    signal mySphModule_n1806: Std_logic;
    signal mySphModule_n1820: Std_logic;
    signal mySphModule_n3074: Std_logic;
    signal mySphModule_n1786: Std_logic;
    signal mySphModule_n2010: Std_logic;
    signal mySphModule_n2020: Std_logic;
    signal mySphModule_n1802: Std_logic;
    signal mySphModule_n1980: Std_logic;
    signal mySphModule_n1668: Std_logic;
    signal mySphModule_n2026: Std_logic;
    signal mySphModule_n1794: Std_logic;
    signal mySphModule_n1974: Std_logic;
    signal mySphModule_n3068: Std_logic;
    signal mySphModule_n1816: Std_logic;
    signal mySphModule_n1818: Std_logic;
    signal mySphModule_n2058: Std_logic;
    signal mySphModule_n2062: Std_logic;
    signal mySphModule_n1996: Std_logic;
    signal mySphModule_n2002: Std_logic;
    signal mySphModule_n2014: Std_logic;
    signal sig_dly: Std_logic;
    signal led_c_0: Std_logic;
    signal led_c_4_c: Std_logic;
    signal n3082: Std_logic;
    signal GND_net: Std_logic;
    signal buf_CLKI: Std_logic;
    signal VCCI: Std_logic;
    component clk_25mhzB
      port (PADDI: out Std_logic; clk25mhz: in Std_logic);
    end component;
    component btn_4_B
      port (PADDI: out Std_logic; btn4: in Std_logic);
    end component;
    component led_0_B
      port (PADDO: in Std_logic; led0: out Std_logic);
    end component;
    component led_1_B
      port (PADDO: in Std_logic; led1: out Std_logic);
    end component;
    component led_2_B
      port (PADDO: in Std_logic; led2: out Std_logic);
    end component;
    component led_3_B
      port (led3: out Std_logic);
    end component;
    component led_4_B
      port (led4: out Std_logic);
    end component;
    component led_5_B
      port (led5: out Std_logic);
    end component;
    component led_6_B
      port (led6: out Std_logic);
    end component;
    component led_7_B
      port (led7: out Std_logic);
    end component;
    component gp_0_B
      port (PADDO: in Std_logic; gp0: out Std_logic);
    end component;
    component gp_1_B
      port (PADDO: in Std_logic; gp1: out Std_logic);
    end component;
    component gp_2_B
      port (PADDO: in Std_logic; gp2: out Std_logic);
    end component;
    component gp_3_B
      port (PADDO: in Std_logic; gp3: out Std_logic);
    end component;
    component gp_4_B
      port (PADDO: in Std_logic; gp4: out Std_logic);
    end component;
    component gp_5_B
      port (gp5: out Std_logic);
    end component;
    component gp_6_B
      port (gp6: out Std_logic);
    end component;
    component gp_7_B
      port (gp7: out Std_logic);
    end component;
    component gp_8_B
      port (gp8: out Std_logic);
    end component;
    component gp_9_B
      port (gp9: out Std_logic);
    end component;
    component gp_10_B
      port (gp10: out Std_logic);
    end component;
    component gp_11_B
      port (gp11: out Std_logic);
    end component;
    component gp_12_B
      port (gp12: out Std_logic);
    end component;
    component myPll_PLLInst_0
      port (CLKI: in Std_logic; CLKFB: in Std_logic; STDBY: in Std_logic; 
            CLKOP: out Std_logic);
    end component;
  begin
    myLeModule_SLICE_0I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_12, 
                DI1=>myLeModule_n158, DI0=>myLeModule_n159, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_11, 
                FCI=>myLeModule_n1070, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1071, 
                F1=>myLeModule_n158, Q1=>myLeModule_counter_12, 
                F0=>myLeModule_n159, Q0=>myLeModule_counter_11);
    myLeModule_SLICE_1I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_10, 
                DI1=>myLeModule_n160, DI0=>myLeModule_n161, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_9, 
                FCI=>myLeModule_n1069, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1070, 
                F1=>myLeModule_n160, Q1=>myLeModule_counter_10, 
                F0=>myLeModule_n161, Q0=>myLeModule_counter_9);
    myLeModule_SLICE_2I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_8, 
                DI1=>myLeModule_n162, DI0=>myLeModule_n163, 
                A0=>myLeModule_counter_6, B0=>myLeModule_n3066, 
                C0=>myLeModule_n7, D0=>myLeModule_counter_7, 
                FCI=>myLeModule_n1068, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1069, 
                F1=>myLeModule_n162, Q1=>myLeModule_counter_8, 
                F0=>myLeModule_n163, Q0=>myLeModule_counter_7);
    myLeModule_SLICE_3I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_7, B1=>myLeModule_n3066, 
                C1=>myLeModule_n7, D1=>myLeModule_counter_6, 
                DI1=>myLeModule_n164, DI0=>myLeModule_n165, 
                A0=>myLeModule_n3071, B0=>myLeModule_n1697, 
                C0=>myLeModule_n810, D0=>myLeModule_counter_5, 
                FCI=>myLeModule_n1067, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1068, 
                F1=>myLeModule_n164, Q1=>myLeModule_counter_6, 
                F0=>myLeModule_n165, Q0=>myLeModule_counter_5);
    myLeModule_SLICE_4I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_4, 
                DI1=>myLeModule_n166, DI0=>myLeModule_n167, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_3, 
                FCI=>myLeModule_n1066, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1067, 
                F1=>myLeModule_n166, Q1=>myLeModule_counter_4, 
                F0=>myLeModule_n167, Q0=>myLeModule_counter_3);
    myLeModule_SLICE_5I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_0, B1=>myLeModule_n3065, 
                C1=>myLeModule_n7, D1=>myLeModule_counter_2, 
                DI1=>myLeModule_n168, DI0=>myLeModule_n169, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_1, 
                FCI=>myLeModule_n1065, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1066, 
                F1=>myLeModule_n168, Q1=>myLeModule_counter_2, 
                F0=>myLeModule_n169, Q0=>myLeModule_counter_1);
    myLeModule_SLICE_6I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"08ff", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_2, B1=>myLeModule_n3065, 
                C1=>myLeModule_n7, D1=>myLeModule_counter_0, 
                DI1=>myLeModule_n170, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'1', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1065, 
                F1=>myLeModule_n170, Q1=>myLeModule_counter_0, F0=>open, 
                Q0=>open);
    myLeModule_SLICE_7I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_32, 
                DI1=>myLeModule_n138, DI0=>myLeModule_n139, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_31, 
                FCI=>myLeModule_n1080, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>open, 
                F1=>myLeModule_n138, Q1=>myLeModule_counter_32, 
                F0=>myLeModule_n139, Q0=>myLeModule_counter_31);
    myLeModule_SLICE_8I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_30, 
                DI1=>myLeModule_n140, DI0=>myLeModule_n141, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_29, 
                FCI=>myLeModule_n1079, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1080, 
                F1=>myLeModule_n140, Q1=>myLeModule_counter_30, 
                F0=>myLeModule_n141, Q0=>myLeModule_counter_29);
    myLeModule_SLICE_9I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_28, 
                DI1=>myLeModule_n142, DI0=>myLeModule_n143, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_27, 
                FCI=>myLeModule_n1078, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1079, 
                F1=>myLeModule_n142, Q1=>myLeModule_counter_28, 
                F0=>myLeModule_n143, Q0=>myLeModule_counter_27);
    myLeModule_SLICE_10I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_26, 
                DI1=>myLeModule_n144, DI0=>myLeModule_n145, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_25, 
                FCI=>myLeModule_n1077, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1078, 
                F1=>myLeModule_n144, Q1=>myLeModule_counter_26, 
                F0=>myLeModule_n145, Q0=>myLeModule_counter_25);
    myLeModule_SLICE_11I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_24, 
                DI1=>myLeModule_n146, DI0=>myLeModule_n147, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_23, 
                FCI=>myLeModule_n1076, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1077, 
                F1=>myLeModule_n146, Q1=>myLeModule_counter_24, 
                F0=>myLeModule_n147, Q0=>myLeModule_counter_23);
    myLeModule_SLICE_12I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_22, 
                DI1=>myLeModule_n148, DI0=>myLeModule_n149, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_21, 
                FCI=>myLeModule_n1075, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1076, 
                F1=>myLeModule_n148, Q1=>myLeModule_counter_22, 
                F0=>myLeModule_n149, Q0=>myLeModule_counter_21);
    myLeModule_SLICE_13I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_20, 
                DI1=>myLeModule_n150, DI0=>myLeModule_n151, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_19, 
                FCI=>myLeModule_n1074, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1075, 
                F1=>myLeModule_n150, Q1=>myLeModule_counter_20, 
                F0=>myLeModule_n151, Q0=>myLeModule_counter_19);
    myLeModule_SLICE_14I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_18, 
                DI1=>myLeModule_n152, DI0=>myLeModule_n153, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_17, 
                FCI=>myLeModule_n1073, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1074, 
                F1=>myLeModule_n152, Q1=>myLeModule_counter_18, 
                F0=>myLeModule_n153, Q0=>myLeModule_counter_17);
    myLeModule_SLICE_15I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_16, 
                DI1=>myLeModule_n154, DI0=>myLeModule_n155, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_15, 
                FCI=>myLeModule_n1072, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1073, 
                F1=>myLeModule_n154, Q1=>myLeModule_counter_16, 
                F0=>myLeModule_n155, Q0=>myLeModule_counter_15);
    myLeModule_SLICE_16I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"f700", INIT1_INITVAL=>X"f700", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myLeModule_counter_5, B1=>myLeModule_n810, 
                C1=>myLeModule_n431, D1=>myLeModule_counter_14, 
                DI1=>myLeModule_n156, DI0=>myLeModule_n157, 
                A0=>myLeModule_counter_5, B0=>myLeModule_n810, 
                C0=>myLeModule_n431, D0=>myLeModule_counter_13, 
                FCI=>myLeModule_n1071, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myLeModule_n1072, 
                F1=>myLeModule_n156, Q1=>myLeModule_counter_14, 
                F0=>myLeModule_n157, Q0=>myLeModule_counter_13);
    mySpvModule_SLICE_17I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_32, 
                DI1=>mySpvModule_n138, DI0=>mySpvModule_n139, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_31, 
                FCI=>mySpvModule_n1114, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>open, 
                F1=>mySpvModule_n138, Q1=>mySpvModule_counter_32, 
                F0=>mySpvModule_n139, Q0=>mySpvModule_counter_31);
    mySpvModule_SLICE_18I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_30, 
                DI1=>mySpvModule_n140, DI0=>mySpvModule_n141, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_29, 
                FCI=>mySpvModule_n1113, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1114, 
                F1=>mySpvModule_n140, Q1=>mySpvModule_counter_30, 
                F0=>mySpvModule_n141, Q0=>mySpvModule_counter_29);
    mySpvModule_SLICE_19I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_28, 
                DI1=>mySpvModule_n142, DI0=>mySpvModule_n143, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_27, 
                FCI=>mySpvModule_n1112, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1113, 
                F1=>mySpvModule_n142, Q1=>mySpvModule_counter_28, 
                F0=>mySpvModule_n143, Q0=>mySpvModule_counter_27);
    mySpvModule_SLICE_20I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_26, 
                DI1=>mySpvModule_n144, DI0=>mySpvModule_n145, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_25, 
                FCI=>mySpvModule_n1111, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1112, 
                F1=>mySpvModule_n144, Q1=>mySpvModule_counter_26, 
                F0=>mySpvModule_n145, Q0=>mySpvModule_counter_25);
    mySpvModule_SLICE_21I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_24, 
                DI1=>mySpvModule_n146, DI0=>mySpvModule_n147, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_23, 
                FCI=>mySpvModule_n1110, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1111, 
                F1=>mySpvModule_n146, Q1=>mySpvModule_counter_24, 
                F0=>mySpvModule_n147, Q0=>mySpvModule_counter_23);
    mySpvModule_SLICE_22I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_22, 
                DI1=>mySpvModule_n148, DI0=>mySpvModule_n149, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_21, 
                FCI=>mySpvModule_n1109, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1110, 
                F1=>mySpvModule_n148, Q1=>mySpvModule_counter_22, 
                F0=>mySpvModule_n149, Q0=>mySpvModule_counter_21);
    mySpvModule_SLICE_23I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_20, 
                DI1=>mySpvModule_n150, DI0=>mySpvModule_n151, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_19, 
                FCI=>mySpvModule_n1108, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1109, 
                F1=>mySpvModule_n150, Q1=>mySpvModule_counter_20, 
                F0=>mySpvModule_n151, Q0=>mySpvModule_counter_19);
    mySpvModule_SLICE_24I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_18, 
                DI1=>mySpvModule_n152, DI0=>mySpvModule_n153, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_17, 
                FCI=>mySpvModule_n1107, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1108, 
                F1=>mySpvModule_n152, Q1=>mySpvModule_counter_18, 
                F0=>mySpvModule_n153, Q0=>mySpvModule_counter_17);
    mySpvModule_SLICE_25I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_16, 
                DI1=>mySpvModule_n154, DI0=>mySpvModule_n155, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_15, 
                FCI=>mySpvModule_n1106, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1107, 
                F1=>mySpvModule_n154, Q1=>mySpvModule_counter_16, 
                F0=>mySpvModule_n155, Q0=>mySpvModule_counter_15);
    mySpvModule_SLICE_26I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_14, 
                DI1=>mySpvModule_n156, DI0=>mySpvModule_n157, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_13, 
                FCI=>mySpvModule_n1105, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1106, 
                F1=>mySpvModule_n156, Q1=>mySpvModule_counter_14, 
                F0=>mySpvModule_n157, Q0=>mySpvModule_counter_13);
    mySpvModule_SLICE_27I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_12, 
                DI1=>mySpvModule_n158, DI0=>mySpvModule_n159, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_11, 
                FCI=>mySpvModule_n1104, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1105, 
                F1=>mySpvModule_n158, Q1=>mySpvModule_counter_12, 
                F0=>mySpvModule_n159, Q0=>mySpvModule_counter_11);
    mySpvModule_SLICE_28I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_10, 
                DI1=>mySpvModule_n160, DI0=>mySpvModule_n161, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_9, 
                FCI=>mySpvModule_n1103, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1104, 
                F1=>mySpvModule_n160, Q1=>mySpvModule_counter_10, 
                F0=>mySpvModule_n161, Q0=>mySpvModule_counter_9);
    mySpvModule_SLICE_29I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"ff00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n1674, B1=>mySpvModule_n64, 
                C1=>mySpvModule_n4, D1=>mySpvModule_counter_8, 
                DI1=>mySpvModule_n162, DI0=>mySpvModule_n163, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_7, 
                FCI=>mySpvModule_n1102, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1103, 
                F1=>mySpvModule_n162, Q1=>mySpvModule_counter_8, 
                F0=>mySpvModule_n163, Q0=>mySpvModule_counter_7);
    mySpvModule_SLICE_30I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_6, 
                DI1=>mySpvModule_n164, DI0=>mySpvModule_n165, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_5, 
                FCI=>mySpvModule_n1101, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1102, 
                F1=>mySpvModule_n164, Q1=>mySpvModule_counter_6, 
                F0=>mySpvModule_n165, Q0=>mySpvModule_counter_5);
    mySpvModule_SLICE_31I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"ff00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_n64, 
                C1=>mySpvModule_n1715, D1=>mySpvModule_counter_4, 
                DI1=>mySpvModule_n166, DI0=>mySpvModule_n167, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_3, 
                FCI=>mySpvModule_n1100, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1101, 
                F1=>mySpvModule_n166, Q1=>mySpvModule_counter_4, 
                F0=>mySpvModule_n167, Q0=>mySpvModule_counter_3);
    mySpvModule_SLICE_32I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_2, 
                DI1=>mySpvModule_n168, DI0=>mySpvModule_n169, 
                A0=>mySpvModule_n806, B0=>mySpvModule_counter_4, 
                C0=>mySpvModule_n419, D0=>mySpvModule_counter_1, 
                FCI=>mySpvModule_n1099, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1100, 
                F1=>mySpvModule_n168, Q1=>mySpvModule_counter_2, 
                F0=>mySpvModule_n169, Q0=>mySpvModule_counter_1);
    mySpvModule_SLICE_33I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"02ff", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>'X', A1=>mySpvModule_n806, B1=>mySpvModule_counter_4, 
                C1=>mySpvModule_n419, D1=>mySpvModule_counter_0, 
                DI1=>mySpvModule_n170, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'1', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySpvModule_n1099, 
                F1=>mySpvModule_n170, Q1=>mySpvModule_counter_0, F0=>open, 
                Q0=>open);
    SLICE_34I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_21, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_20, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1041, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1042, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_35I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n161, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_2, DI0=>counter_32_N_34_1, A0=>n164, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1015, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1016, F1=>counter_32_N_34_2, 
                Q1=>n161, F0=>counter_32_N_34_1, Q0=>n164);
    SLICE_36I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n137, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_10, DI0=>counter_32_N_34_9, A0=>n140, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1019, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1020, F1=>counter_32_N_34_10, 
                Q1=>n137, F0=>counter_32_N_34_9, Q0=>n140);
    SLICE_37I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_19, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_18, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1040, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1041, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_38I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n107, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_20, DI0=>counter_32_N_34_19, A0=>n110, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1024, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1025, F1=>counter_32_N_34_20, 
                Q1=>n107, F0=>counter_32_N_34_19, Q0=>n110);
    SLICE_39I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n113, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_18, DI0=>counter_32_N_34_17, A0=>n116, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1023, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1024, F1=>counter_32_N_34_18, 
                Q1=>n113, F0=>counter_32_N_34_17, Q0=>n116);
    SLICE_40I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_17, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_16, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1039, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1040, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_41I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n89, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_26, DI0=>counter_32_N_34_25, A0=>n92, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1027, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1028, F1=>counter_32_N_34_26, 
                Q1=>n89, F0=>counter_32_N_34_25, Q0=>n92);
    SLICE_42I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_15, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_14, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1038, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1039, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_43I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_13, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_12, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1037, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1038, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_44I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"AA55")
      port map (M1=>'X', A1=>counter_32_N_34_1, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n1032, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_45I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n71, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_32, DI0=>counter_32_N_34_31, A0=>n74, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1030, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>open, F1=>counter_32_N_34_32, 
                Q1=>n71, F0=>counter_32_N_34_31, Q0=>n74);
    SLICE_46I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n77, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_30, DI0=>counter_32_N_34_29, A0=>n80, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1029, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1030, F1=>counter_32_N_34_30, 
                Q1=>n77, F0=>counter_32_N_34_29, Q0=>n80);
    SLICE_47I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>counter_32_N_34_32, B0=>'X', C0=>'X', D0=>'1', 
                FCI=>n1047, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>cout, Q1=>open, F0=>open, Q0=>open);
    SLICE_48I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n95, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_24, DI0=>counter_32_N_34_23, A0=>n98, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1026, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1027, F1=>counter_32_N_34_24, 
                Q1=>n95, F0=>counter_32_N_34_23, Q0=>n98);
    SLICE_49I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_11, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_10, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1036, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1037, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_50I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n143, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_8, DI0=>counter_32_N_34_7, A0=>n146, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1018, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1019, F1=>counter_32_N_34_8, 
                Q1=>n143, F0=>counter_32_N_34_7, Q0=>n146);
    SLICE_51I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_9, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_8, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1035, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1036, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_52I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n149, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_6, DI0=>counter_32_N_34_5, A0=>n152, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1017, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1018, F1=>counter_32_N_34_6, 
                Q1=>n149, F0=>counter_32_N_34_5, Q0=>n152);
    SLICE_53I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n125, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_14, DI0=>counter_32_N_34_13, A0=>n128, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1021, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1022, F1=>counter_32_N_34_14, 
                Q1=>n125, F0=>counter_32_N_34_13, Q0=>n128);
    SLICE_54I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n155, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_4, DI0=>counter_32_N_34_3, A0=>n158, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1016, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1017, F1=>counter_32_N_34_4, 
                Q1=>n155, F0=>counter_32_N_34_3, Q0=>n158);
    SLICE_55I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_31, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_30, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1046, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1047, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_56I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_29, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_28, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1045, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1046, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_57I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n83, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_28, DI0=>counter_32_N_34_27, A0=>n86, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1028, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1029, F1=>counter_32_N_34_28, 
                Q1=>n83, F0=>counter_32_N_34_27, Q0=>n86);
    SLICE_58I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_7, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_6, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1034, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1035, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_59I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_27, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_26, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1044, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1045, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_60I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_5, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_4, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1033, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1034, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_61I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n101, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_22, DI0=>counter_32_N_34_21, A0=>n104, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1025, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1026, F1=>counter_32_N_34_22, 
                Q1=>n101, F0=>counter_32_N_34_21, Q0=>n104);
    SLICE_62I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n131, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_12, DI0=>counter_32_N_34_11, A0=>n134, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1020, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1021, F1=>counter_32_N_34_12, 
                Q1=>n131, F0=>counter_32_N_34_11, Q0=>n134);
    SLICE_63I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_25, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_24, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1043, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1044, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_64I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n119, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_16, DI0=>counter_32_N_34_15, A0=>n122, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n1022, M0=>'X', CE=>'X', 
                CLK=>clk_100mhz, LSR=>cout, FCO=>n1023, F1=>counter_32_N_34_16, 
                Q1=>n119, F0=>counter_32_N_34_15, Q0=>n122);
    SLICE_65I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_23, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_22, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1042, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1043, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_66I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>n167, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_32_N_34_0, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', FCI=>'X', M0=>'X', CE=>'X', CLK=>clk_100mhz, 
                LSR=>cout, FCO=>n1015, F1=>counter_32_N_34_0, Q1=>n167, 
                F0=>open, Q0=>open);
    SLICE_67I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_32_N_34_3, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>counter_32_N_34_2, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n1032, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>n1033, F1=>open, Q1=>open, F0=>open, Q0=>open);
    myCkvModule_SLICE_68I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_20, 
                DI1=>myCkvModule_n150, DI0=>myCkvModule_n151, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_19, FCI=>myCkvModule_n1091, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1092, F1=>myCkvModule_n150, 
                Q1=>myCkvModule_counter_20, F0=>myCkvModule_n151, 
                Q0=>myCkvModule_counter_19);
    myCkvModule_SLICE_69I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_18, 
                DI1=>myCkvModule_n152, DI0=>myCkvModule_n153, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_17, FCI=>myCkvModule_n1090, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1091, F1=>myCkvModule_n152, 
                Q1=>myCkvModule_counter_18, F0=>myCkvModule_n153, 
                Q0=>myCkvModule_counter_17);
    myCkvModule_SLICE_70I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"02ff", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_counter_2, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_0, 
                DI1=>myCkvModule_n170, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'1', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myCkvModule_n1082, 
                F1=>myCkvModule_n170, Q1=>myCkvModule_counter_0, F0=>open, 
                Q0=>open);
    myCkvModule_SLICE_71I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_16, 
                DI1=>myCkvModule_n154, DI0=>myCkvModule_n155, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_15, FCI=>myCkvModule_n1089, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1090, F1=>myCkvModule_n154, 
                Q1=>myCkvModule_counter_16, F0=>myCkvModule_n155, 
                Q0=>myCkvModule_counter_15);
    myCkvModule_SLICE_72I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_14, 
                DI1=>myCkvModule_n156, DI0=>myCkvModule_n157, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_13, FCI=>myCkvModule_n1088, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1089, F1=>myCkvModule_n156, 
                Q1=>myCkvModule_counter_14, F0=>myCkvModule_n157, 
                Q0=>myCkvModule_counter_13);
    myCkvModule_SLICE_73I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_12, 
                DI1=>myCkvModule_n158, DI0=>myCkvModule_n159, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_11, FCI=>myCkvModule_n1087, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1088, F1=>myCkvModule_n158, 
                Q1=>myCkvModule_counter_12, F0=>myCkvModule_n159, 
                Q0=>myCkvModule_counter_11);
    myCkvModule_SLICE_74I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_10, 
                DI1=>myCkvModule_n160, DI0=>myCkvModule_n161, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_9, FCI=>myCkvModule_n1086, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1087, F1=>myCkvModule_n160, 
                Q1=>myCkvModule_counter_10, F0=>myCkvModule_n161, 
                Q0=>myCkvModule_counter_9);
    myCkvModule_SLICE_75I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_8, 
                DI1=>myCkvModule_n162, DI0=>myCkvModule_n163, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_7, FCI=>myCkvModule_n1085, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1086, F1=>myCkvModule_n162, 
                Q1=>myCkvModule_counter_8, F0=>myCkvModule_n163, 
                Q0=>myCkvModule_counter_7);
    myCkvModule_SLICE_76I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_6, 
                DI1=>myCkvModule_n164, DI0=>myCkvModule_n165, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, 
                C0=>myCkvModule_n1681, D0=>myCkvModule_counter_5, 
                FCI=>myCkvModule_n1084, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myCkvModule_n1085, 
                F1=>myCkvModule_n164, Q1=>myCkvModule_counter_6, 
                F0=>myCkvModule_n165, Q0=>myCkvModule_counter_5);
    myCkvModule_SLICE_77I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ff00", INIT1_INITVAL=>X"ff00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_counter_3, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_4, 
                DI1=>myCkvModule_n166, DI0=>myCkvModule_n167, 
                A0=>myCkvModule_n681, B0=>myCkvModule_counter_4, 
                C0=>myCkvModule_n7, D0=>myCkvModule_counter_3, 
                FCI=>myCkvModule_n1083, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>myCkvModule_n1084, 
                F1=>myCkvModule_n166, Q1=>myCkvModule_counter_4, 
                F0=>myCkvModule_n167, Q0=>myCkvModule_counter_3);
    myCkvModule_SLICE_78I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_counter_0, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_2, 
                DI1=>myCkvModule_n168, DI0=>myCkvModule_n169, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_1, FCI=>myCkvModule_n1082, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1083, F1=>myCkvModule_n168, 
                Q1=>myCkvModule_counter_2, F0=>myCkvModule_n169, 
                Q0=>myCkvModule_counter_1);
    myCkvModule_SLICE_79I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_32, 
                DI1=>myCkvModule_n138, DI0=>myCkvModule_n139, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_31, FCI=>myCkvModule_n1097, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>open, 
                F1=>myCkvModule_n138, Q1=>myCkvModule_counter_32, 
                F0=>myCkvModule_n139, Q0=>myCkvModule_counter_31);
    myCkvModule_SLICE_80I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_30, 
                DI1=>myCkvModule_n140, DI0=>myCkvModule_n141, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_29, FCI=>myCkvModule_n1096, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1097, F1=>myCkvModule_n140, 
                Q1=>myCkvModule_counter_30, F0=>myCkvModule_n141, 
                Q0=>myCkvModule_counter_29);
    myCkvModule_SLICE_81I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_28, 
                DI1=>myCkvModule_n142, DI0=>myCkvModule_n143, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_27, FCI=>myCkvModule_n1095, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1096, F1=>myCkvModule_n142, 
                Q1=>myCkvModule_counter_28, F0=>myCkvModule_n143, 
                Q0=>myCkvModule_counter_27);
    myCkvModule_SLICE_82I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_26, 
                DI1=>myCkvModule_n144, DI0=>myCkvModule_n145, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_25, FCI=>myCkvModule_n1094, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1095, F1=>myCkvModule_n144, 
                Q1=>myCkvModule_counter_26, F0=>myCkvModule_n145, 
                Q0=>myCkvModule_counter_25);
    myCkvModule_SLICE_83I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_24, 
                DI1=>myCkvModule_n146, DI0=>myCkvModule_n147, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_23, FCI=>myCkvModule_n1093, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1094, F1=>myCkvModule_n146, 
                Q1=>myCkvModule_counter_24, F0=>myCkvModule_n147, 
                Q0=>myCkvModule_counter_23);
    myCkvModule_SLICE_84I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"fd00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>myCkvModule_n681, B1=>myCkvModule_n437, 
                C1=>myCkvModule_n7, D1=>myCkvModule_counter_22, 
                DI1=>myCkvModule_n148, DI0=>myCkvModule_n149, 
                A0=>myCkvModule_n681, B0=>myCkvModule_n437, C0=>myCkvModule_n7, 
                D0=>myCkvModule_counter_21, FCI=>myCkvModule_n1092, M0=>'X', 
                CE=>'X', CLK=>mySphModule_clock_N_362, LSR=>'X', 
                FCO=>myCkvModule_n1093, F1=>myCkvModule_n148, 
                Q1=>myCkvModule_counter_22, F0=>myCkvModule_n149, 
                Q0=>myCkvModule_counter_21);
    mySphModule_SLICE_85I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_6, 
                DI1=>mySphModule_n164, DI0=>mySphModule_n165, 
                A0=>mySphModule_n407, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_5, 
                FCI=>mySphModule_n1050, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1051, 
                F1=>mySphModule_n164, Q1=>mySphModule_counter_6, 
                F0=>mySphModule_n165, Q0=>mySphModule_counter_5);
    mySphModule_SLICE_86I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_24, 
                DI1=>mySphModule_n146, DI0=>mySphModule_n147, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_23, 
                FCI=>mySphModule_n1059, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1060, 
                F1=>mySphModule_n146, Q1=>mySphModule_counter_24, 
                F0=>mySphModule_n147, Q0=>mySphModule_counter_23);
    mySphModule_SLICE_87I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ff00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_4, 
                DI1=>mySphModule_n166, DI0=>mySphModule_n167, 
                A0=>mySphModule_n4_adj_402, B0=>mySphModule_n4, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_3, 
                FCI=>mySphModule_n1049, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1050, 
                F1=>mySphModule_n166, Q1=>mySphModule_counter_4, 
                F0=>mySphModule_n167, Q0=>mySphModule_counter_3);
    mySphModule_SLICE_88I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_22, 
                DI1=>mySphModule_n148, DI0=>mySphModule_n149, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_21, 
                FCI=>mySphModule_n1058, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1059, 
                F1=>mySphModule_n148, Q1=>mySphModule_counter_22, 
                F0=>mySphModule_n149, Q0=>mySphModule_counter_21);
    mySphModule_SLICE_89I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_32, 
                DI1=>mySphModule_n138, DI0=>mySphModule_n139, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_31, 
                FCI=>mySphModule_n1063, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>open, 
                F1=>mySphModule_n138, Q1=>mySphModule_counter_32, 
                F0=>mySphModule_n139, Q0=>mySphModule_counter_31);
    mySphModule_SLICE_90I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"fd00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_counter_5, B1=>mySphModule_n407, 
                C1=>mySphModule_n449, D1=>mySphModule_counter_2, 
                DI1=>mySphModule_n168, DI0=>mySphModule_n169, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_1, 
                FCI=>mySphModule_n1048, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1049, 
                F1=>mySphModule_n168, Q1=>mySphModule_counter_2, 
                F0=>mySphModule_n169, Q0=>mySphModule_counter_1);
    mySphModule_SLICE_91I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_20, 
                DI1=>mySphModule_n150, DI0=>mySphModule_n151, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_19, 
                FCI=>mySphModule_n1057, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1058, 
                F1=>mySphModule_n150, Q1=>mySphModule_counter_20, 
                F0=>mySphModule_n151, Q0=>mySphModule_counter_19);
    mySphModule_SLICE_92I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"10ff", 
                   REG1_SD=>"VHI", CHECK_DI1=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_0, 
                DI1=>mySphModule_n170, DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'1', FCI=>'X', M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1048, 
                F1=>mySphModule_n170, Q1=>mySphModule_counter_0, F0=>open, 
                Q0=>open);
    mySphModule_SLICE_93I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_18, 
                DI1=>mySphModule_n152, DI0=>mySphModule_n153, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_17, 
                FCI=>mySphModule_n1056, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1057, 
                F1=>mySphModule_n152, Q1=>mySphModule_counter_18, 
                F0=>mySphModule_n153, Q0=>mySphModule_counter_17);
    mySphModule_SLICE_94I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_16, 
                DI1=>mySphModule_n154, DI0=>mySphModule_n155, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_15, 
                FCI=>mySphModule_n1055, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1056, 
                F1=>mySphModule_n154, Q1=>mySphModule_counter_16, 
                F0=>mySphModule_n155, Q0=>mySphModule_counter_15);
    mySphModule_SLICE_95I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_14, 
                DI1=>mySphModule_n156, DI0=>mySphModule_n157, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_13, 
                FCI=>mySphModule_n1054, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1055, 
                F1=>mySphModule_n156, Q1=>mySphModule_counter_14, 
                F0=>mySphModule_n157, Q0=>mySphModule_counter_13);
    mySphModule_SLICE_96I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_30, 
                DI1=>mySphModule_n140, DI0=>mySphModule_n141, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_29, 
                FCI=>mySphModule_n1062, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1063, 
                F1=>mySphModule_n140, Q1=>mySphModule_counter_30, 
                F0=>mySphModule_n141, Q0=>mySphModule_counter_29);
    mySphModule_SLICE_97I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_12, 
                DI1=>mySphModule_n158, DI0=>mySphModule_n159, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_11, 
                FCI=>mySphModule_n1053, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1054, 
                F1=>mySphModule_n158, Q1=>mySphModule_counter_12, 
                F0=>mySphModule_n159, Q0=>mySphModule_counter_11);
    mySphModule_SLICE_98I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_10, 
                DI1=>mySphModule_n160, DI0=>mySphModule_n161, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_9, 
                FCI=>mySphModule_n1052, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1053, 
                F1=>mySphModule_n160, Q1=>mySphModule_counter_10, 
                F0=>mySphModule_n161, Q0=>mySphModule_counter_9);
    mySphModule_SLICE_99I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_28, 
                DI1=>mySphModule_n142, DI0=>mySphModule_n143, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_27, 
                FCI=>mySphModule_n1061, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1062, 
                F1=>mySphModule_n142, Q1=>mySphModule_counter_28, 
                F0=>mySphModule_n143, Q0=>mySphModule_counter_27);
    mySphModule_SLICE_100I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_26, 
                DI1=>mySphModule_n144, DI0=>mySphModule_n145, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_25, 
                FCI=>mySphModule_n1060, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1061, 
                F1=>mySphModule_n144, Q1=>mySphModule_counter_26, 
                F0=>mySphModule_n145, Q0=>mySphModule_counter_25);
    mySphModule_SLICE_101I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", CCU2_INJECT1_0=>"NO", 
                   CCU2_INJECT1_1=>"NO", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   INIT0_INITVAL=>X"ef00", INIT1_INITVAL=>X"ef00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', A1=>mySphModule_n4, B1=>mySphModule_n449, 
                C1=>mySphModule_counter_2, D1=>mySphModule_counter_8, 
                DI1=>mySphModule_n162, DI0=>mySphModule_n163, 
                A0=>mySphModule_n4, B0=>mySphModule_n449, 
                C0=>mySphModule_counter_2, D0=>mySphModule_counter_7, 
                FCI=>mySphModule_n1051, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', FCO=>mySphModule_n1052, 
                F1=>mySphModule_n162, Q1=>mySphModule_counter_8, 
                F0=>mySphModule_n163, Q0=>mySphModule_counter_7);
    clckDiv_SLICE_102I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"9999", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>clckDiv_n2736, A0=>clk_divOut, 
                B0=>cout, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>clk_100mhz, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>clckDiv_n2736, Q0=>clk_divOut);
    mySpvModule_SLICE_103I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"BBFB", 
                   LUT1_INITVAL=>X"AAA8", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>gp_c_1, B1=>mySpvModule_n2258, 
                C1=>mySpvModule_n2290, D1=>mySpvModule_n2288, DI1=>'X', 
                DI0=>mySpvModule_spv_N_246, A0=>mySpvModule_n23, 
                B0=>mySpvModule_n1695, C0=>mySpvModule_n2538, 
                D0=>mySpvModule_n2723, M0=>'X', CE=>'X', 
                CLK=>mySphModule_clock_N_362, LSR=>'X', OFX1=>open, 
                F1=>mySpvModule_n23, Q1=>open, OFX0=>open, 
                F0=>mySpvModule_spv_N_246, Q0=>gp_c_1);
    myLeModule_SLICE_104I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   LUT0_INITVAL=>X"0004", LUT1_INITVAL=>X"EFEF", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_8, 
                B1=>myLeModule_counter_30, C1=>myLeModule_counter_0, D1=>'X', 
                DI1=>'X', DI0=>myLeModule_le_N_323, A0=>myLeModule_n2130, 
                B0=>myLeModule_n1714, C0=>myLeModule_n2132, 
                D0=>myLeModule_n2128, M0=>'X', 
                CE=>myLeModule_clock_N_362_enable_3, 
                CLK=>mySphModule_clock_N_362, LSR=>myLeModule_n402, OFX1=>open, 
                F1=>myLeModule_n2128, Q1=>open, OFX0=>open, 
                F0=>myLeModule_le_N_323, Q0=>gp_c_2);
    mySphModule_SLICE_105I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"FEFF", 
                   LUT1_INITVAL=>X"BBBF", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_n424, 
                B1=>mySphModule_sph_N_397, C1=>mySphModule_n2628, 
                D1=>mySphModule_n2626, DI1=>'X', DI0=>mySphModule_sph_N_397, 
                A0=>mySphModule_n2036, B0=>mySphModule_n2022, 
                C0=>mySphModule_n2028, D0=>mySphModule_counter_2, M0=>'X', 
                CE=>mySphModule_clock_N_362_enable_1, 
                CLK=>mySphModule_clock_N_362, LSR=>mySphModule_n424, 
                OFX1=>open, F1=>mySphModule_clock_N_362_enable_1, Q1=>open, 
                OFX0=>open, F0=>mySphModule_sph_N_397, Q0=>gp_c_3);
    myCkvModule_SLICE_106I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", LUT0_INITVAL=>X"FFFE", 
                   LUT1_INITVAL=>X"FEFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_1, 
                B1=>myCkvModule_counter_30, C1=>myCkvModule_n45, D1=>'X', 
                DI1=>'X', DI0=>myCkvModule_ckv_N_173, A0=>myCkvModule_n2236, 
                B0=>myCkvModule_n2222, C0=>myCkvModule_n2228, 
                D0=>myCkvModule_n2220, M0=>'X', 
                CE=>myCkvModule_clock_N_362_enable_2, 
                CLK=>mySphModule_clock_N_362, LSR=>myCkvModule_n65, OFX1=>open, 
                F1=>myCkvModule_n2228, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_ckv_N_173, Q0=>n296);
    myLeModule_SLICE_108I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_9, 
                B1=>myLeModule_counter_13, C1=>myLeModule_counter_11, 
                D1=>myLeModule_counter_19, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_n2368, B0=>myLeModule_n2378, 
                C0=>myLeModule_n2374, D0=>myLeModule_n45, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n45, Q1=>open, 
                OFX0=>open, F0=>myLeModule_n431, Q0=>open);
    myLeModule_SLICE_109I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n3072, 
                B1=>myLeModule_counter_29, C1=>myLeModule_n2096, 
                D1=>myLeModule_counter_1, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_28, B0=>myLeModule_counter_16, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>myLeModule_n2484, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n3072, Q0=>open);
    myLeModule_SLICE_110I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n2164, 
                B1=>myLeModule_n2174, C1=>myLeModule_n3078, 
                D1=>myLeModule_n2096, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_31, B0=>myLeModule_counter_16, 
                C0=>myLeModule_counter_27, D0=>myLeModule_counter_24, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2180, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2164, Q0=>open);
    myLeModule_SLICE_111I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n2408, 
                B1=>myLeModule_n2112, C1=>myLeModule_n2406, 
                D1=>myLeModule_n2402, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_28, B0=>myLeModule_counter_16, 
                C0=>myLeModule_counter_3, D0=>myLeModule_counter_23, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2422, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2408, Q0=>open);
    myLeModule_SLICE_112I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n2102, 
                B1=>myLeModule_n2126, C1=>myLeModule_n2114, 
                D1=>myLeModule_n2096, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_23, B0=>myLeModule_counter_28, 
                C0=>myLeModule_counter_16, D0=>myLeModule_counter_31, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2132, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2114, Q0=>open);
    myLeModule_SLICE_113I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n3075, 
                B1=>myLeModule_n28, C1=>myLeModule_n3077, D1=>myLeModule_n2362, 
                DI1=>'X', DI0=>'X', A0=>myLeModule_counter_26, 
                B0=>myLeModule_counter_25, C0=>myLeModule_counter_3, 
                D0=>myLeModule_counter_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>myLeModule_n2378, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n2362, Q0=>open);
    myLeModule_SLICE_114I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_24, 
                B1=>myLeModule_n2412, C1=>myLeModule_n2104, 
                D1=>myLeModule_counter_14, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_26, B0=>myLeModule_counter_25, 
                C0=>myLeModule_counter_17, D0=>myLeModule_counter_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2418, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2412, Q0=>open);
    myLeModule_SLICE_115I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_27, 
                B1=>myLeModule_counter_1, C1=>myLeModule_counter_29, 
                D1=>myLeModule_counter_24, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_20, B0=>myLeModule_n2364, 
                C0=>myLeModule_n3067, D0=>myLeModule_counter_21, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2364, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2368, Q0=>open);
    myLeModule_SLICE_116I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_28, 
                B1=>myLeModule_counter_18, C1=>myLeModule_counter_12, 
                D1=>myLeModule_counter_16, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_32, B0=>myLeModule_counter_15, 
                C0=>myLeModule_n44, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>myLeModule_n44, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n2374, Q0=>open);
    myLeModule_SLICE_117I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n2484, 
                B1=>myLeModule_n2494, C1=>myLeModule_n2574, D1=>myLeModule_n45, 
                DI1=>'X', DI0=>'X', A0=>myLeModule_counter_22, 
                B0=>myLeModule_counter_10, C0=>myLeModule_counter_15, 
                D0=>myLeModule_counter_32, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>myLeModule_n1697, Q1=>open, 
                OFX0=>open, F0=>myLeModule_n2574, Q0=>open);
    myLeModule_SLICE_118I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n2574, 
                B1=>myLeModule_n3077, C1=>myLeModule_n2552, 
                D1=>myLeModule_n3076, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_27, B0=>myLeModule_counter_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>myLeModule_n2580, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n3076, Q0=>open);
    myLeModule_SLICE_119I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n3077, 
                B1=>myLeModule_n2482, C1=>myLeModule_n28, D1=>myLeModule_n2480, 
                DI1=>'X', DI0=>'X', A0=>myLeModule_counter_8, 
                B0=>myLeModule_counter_30, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2494, Q1=>open, 
                OFX0=>open, F0=>myLeModule_n3077, Q0=>open);
    myLeModule_SLICE_120I: SLOGICB
      generic map (LUT0_INITVAL=>X"EFEF", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n2178, 
                B1=>myLeModule_n1714, C1=>myLeModule_n2180, 
                D1=>myLeModule_n2176, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_8, B0=>myLeModule_counter_30, 
                C0=>myLeModule_counter_2, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>myLeModule_n402, Q1=>open, 
                OFX0=>open, F0=>myLeModule_n2176, Q0=>open);
    myLeModule_SLICE_121I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"FEFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n2422, 
                B1=>myLeModule_n2418, C1=>myLeModule_n2420, 
                D1=>myLeModule_counter_5, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_8, B0=>myLeModule_counter_30, 
                C0=>myLeModule_n45, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>myLeModule_n7, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n2420, Q0=>open);
    myLeModule_SLICE_122I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEF", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n2570, 
                B1=>myLeModule_n45, C1=>myLeModule_n2568, D1=>myLeModule_n44, 
                DI1=>'X', DI0=>'X', A0=>myLeModule_n402, 
                B0=>myLeModule_le_N_323, C0=>myLeModule_n2582, 
                D0=>myLeModule_n2580, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>myLeModule_n2582, Q1=>open, OFX0=>open, 
                F0=>myLeModule_clock_N_362_enable_3, Q0=>open);
    myLeModule_SLICE_123I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_2, 
                B1=>myLeModule_counter_14, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>myLeModule_n2562, B0=>myLeModule_n2546, 
                C0=>myLeModule_counter_24, D0=>myLeModule_counter_20, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2546, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2570, Q0=>open);
    myLeModule_SLICE_124I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_31, 
                B1=>myLeModule_counter_23, C1=>myLeModule_counter_3, 
                D1=>myLeModule_counter_4, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_n2560, B0=>myLeModule_counter_7, 
                C0=>myLeModule_counter_5, D0=>myLeModule_counter_6, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2560, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2568, Q0=>open);
    myLeModule_SLICE_125I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_15, 
                B1=>myLeModule_counter_32, C1=>myLeModule_counter_10, 
                D1=>myLeModule_counter_22, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_n2112, B0=>myLeModule_n45, 
                C0=>myLeModule_counter_5, D0=>myLeModule_counter_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2112, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2178, Q0=>open);
    myLeModule_SLICE_126I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_29, 
                B1=>myLeModule_counter_21, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>myLeModule_n2166, B0=>myLeModule_n2148, 
                C0=>myLeModule_counter_20, D0=>myLeModule_counter_25, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2148, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2174, Q0=>open);
    myLeModule_SLICE_127I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_24, 
                B1=>myLeModule_counter_29, C1=>myLeModule_counter_14, 
                D1=>myLeModule_counter_17, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_n2118, B0=>myLeModule_counter_26, 
                C0=>myLeModule_n2104, D0=>myLeModule_counter_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2118, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2126, Q0=>open);
    mySpvModule_SLICE_128I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_29, 
                B1=>mySpvModule_n1768, C1=>mySpvModule_n3081, 
                D1=>mySpvModule_counter_32, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_counter_7, B0=>mySpvModule_counter_23, 
                C0=>mySpvModule_counter_30, D0=>mySpvModule_counter_16, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySpvModule_n1772, Q1=>open, OFX0=>open, 
                F0=>mySpvModule_n1768, Q0=>open);
    mySpvModule_SLICE_129I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_9, 
                B1=>mySpvModule_n2246, C1=>mySpvModule_n2244, 
                D1=>mySpvModule_counter_20, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_n1940, B0=>mySpvModule_n2454, 
                C0=>mySpvModule_n45, D0=>mySpvModule_n2450, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n45, Q1=>open, 
                OFX0=>open, F0=>mySpvModule_n64, Q0=>open);
    mySpvModule_SLICE_130I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_31, 
                B1=>mySpvModule_counter_24, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySpvModule_n2452, B0=>mySpvModule_counter_26, 
                C0=>mySpvModule_n3081, D0=>mySpvModule_counter_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n3081, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n2454, Q0=>open);
    mySpvModule_SLICE_131I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBBB", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_11, 
                B1=>mySpvModule_counter_17, C1=>mySpvModule_counter_12, 
                D1=>mySpvModule_counter_10, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_counter_4, B0=>mySpvModule_n806, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySpvModule_n806, Q1=>open, OFX0=>open, F0=>mySpvModule_n4, 
                Q0=>open);
    mySpvModule_SLICE_132I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_n1940, 
                B1=>mySpvModule_n1942, C1=>mySpvModule_n1920, 
                D1=>mySpvModule_n2773, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_counter_0, B0=>mySpvModule_counter_25, 
                C0=>mySpvModule_counter_27, D0=>mySpvModule_counter_32, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySpvModule_n1948, Q1=>open, OFX0=>open, 
                F0=>mySpvModule_n1940, Q0=>open);
    mySpvModule_SLICE_133I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFB", LUT1_INITVAL=>X"FF7F")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_6, 
                B1=>mySpvModule_counter_3, C1=>mySpvModule_counter_2, 
                D1=>mySpvModule_counter_8, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_n1715, B0=>mySpvModule_n806, 
                C0=>mySpvModule_n1948, D0=>mySpvModule_n1946, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n1715, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n1695, Q0=>open);
    mySpvModule_SLICE_134I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_31, 
                B1=>mySpvModule_counter_24, C1=>mySpvModule_counter_17, 
                D1=>mySpvModule_counter_10, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_n45, B0=>mySpvModule_n2286, 
                C0=>mySpvModule_n2516, D0=>mySpvModule_n2695, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n2286, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n2538, Q0=>open);
    mySpvModule_SLICE_135I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_23, 
                B1=>mySpvModule_counter_30, C1=>mySpvModule_counter_28, 
                D1=>mySpvModule_counter_0, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_n2721, B0=>mySpvModule_n2703, 
                C0=>mySpvModule_n2713, D0=>mySpvModule_counter_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n2713, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n2723, Q0=>open);
    mySpvModule_SLICE_136I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF7F", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_8, 
                B1=>mySpvModule_counter_11, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySpvModule_counter_6, B0=>mySpvModule_n2772, 
                C0=>mySpvModule_counter_4, D0=>mySpvModule_n2250, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n2250, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n2258, Q0=>open);
    mySpvModule_SLICE_137I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_23, 
                B1=>mySpvModule_counter_25, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySpvModule_n2286, B0=>mySpvModule_n2280, 
                C0=>mySpvModule_n2270, D0=>mySpvModule_counter_16, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n2270, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n2290, Q0=>open);
    mySpvModule_SLICE_138I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_5, 
                B1=>mySpvModule_counter_21, C1=>mySpvModule_counter_29, 
                D1=>mySpvModule_counter_12, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_n2278, B0=>mySpvModule_n45, 
                C0=>mySpvModule_n2276, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>mySpvModule_n2276, Q1=>open, 
                OFX0=>open, F0=>mySpvModule_n2288, Q0=>open);
    mySpvModule_SLICE_139I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_30, 
                B1=>mySpvModule_counter_29, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySpvModule_n45, B0=>mySpvModule_counter_5, 
                C0=>mySpvModule_n1930, D0=>mySpvModule_counter_28, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n1930, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n1946, Q0=>open);
    mySpvModule_SLICE_140I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_15, 
                B1=>mySpvModule_counter_7, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySpvModule_n2715, B0=>mySpvModule_counter_5, 
                C0=>mySpvModule_n2701, D0=>mySpvModule_counter_27, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n2701, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n2721, Q0=>open);
    mySpvModule_SLICE_141I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_n1756, 
                B1=>mySpvModule_n1764, C1=>mySpvModule_counter_5, 
                D1=>mySpvModule_counter_28, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_n1770, B0=>mySpvModule_n1715, 
                C0=>mySpvModule_n1772, D0=>mySpvModule_n45, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n1770, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n419, Q0=>open);
    myCkvModule_SLICE_142I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_n2312, 
                B1=>myCkvModule_counter_16, C1=>myCkvModule_n3070, 
                D1=>myCkvModule_counter_17, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_counter_8, B0=>myCkvModule_counter_32, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>myCkvModule_n2322, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n3070, Q0=>open);
    myCkvModule_SLICE_143I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_n2202, 
                B1=>myCkvModule_n2210, C1=>myCkvModule_counter_21, 
                D1=>myCkvModule_counter_23, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_counter_8, B0=>myCkvModule_counter_32, 
                C0=>myCkvModule_counter_16, D0=>myCkvModule_counter_0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n2222, 
                Q1=>open, OFX0=>open, F0=>myCkvModule_n2210, Q0=>open);
    myCkvModule_SLICE_144I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_n2326, 
                B1=>myCkvModule_n2320, C1=>myCkvModule_n3079, 
                D1=>myCkvModule_n2308, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_counter_31, B0=>myCkvModule_counter_12, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>myCkvModule_n2330, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n3079, Q0=>open);
    myCkvModule_SLICE_145I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_n2656, 
                B1=>myCkvModule_n2666, C1=>myCkvModule_n2658, 
                D1=>myCkvModule_n2652, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_counter_31, B0=>myCkvModule_counter_12, 
                C0=>myCkvModule_counter_26, D0=>myCkvModule_counter_25, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>myCkvModule_n2672, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n2656, Q0=>open);
    myCkvModule_SLICE_146I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_n3080, 
                B1=>myCkvModule_n2306, C1=>myCkvModule_counter_26, 
                D1=>myCkvModule_counter_20, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_counter_1, B0=>myCkvModule_counter_30, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>myCkvModule_n2326, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n3080, Q0=>open);
    myCkvModule_SLICE_147I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_n1862, 
                B1=>myCkvModule_n683, C1=>myCkvModule_n1864, 
                D1=>myCkvModule_n1860, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_n1838, B0=>myCkvModule_n1856, 
                C0=>myCkvModule_n1854, D0=>myCkvModule_n1836, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n7, Q1=>open, 
                OFX0=>open, F0=>myCkvModule_n1864, Q0=>open);
    myCkvModule_SLICE_148I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_12, 
                B1=>myCkvModule_counter_14, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>myCkvModule_n3080, B0=>myCkvModule_n1842, 
                C0=>myCkvModule_counter_31, D0=>myCkvModule_counter_21, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>myCkvModule_n1842, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n1860, Q0=>open);
    myCkvModule_SLICE_149I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_10, 
                B1=>myCkvModule_counter_32, C1=>myCkvModule_counter_15, 
                D1=>myCkvModule_counter_17, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_n1830, B0=>myCkvModule_n1846, 
                C0=>myCkvModule_counter_8, D0=>myCkvModule_counter_22, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n1846, 
                Q1=>open, OFX0=>open, F0=>myCkvModule_n1856, Q0=>open);
    myCkvModule_SLICE_150I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDF", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_1, 
                B1=>myCkvModule_counter_30, C1=>myCkvModule_n2650, 
                D1=>myCkvModule_n2664, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_ckv_N_173, B0=>myCkvModule_n65, 
                C0=>myCkvModule_n2672, D0=>myCkvModule_n2670, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n2670, 
                Q1=>open, OFX0=>open, F0=>myCkvModule_clock_N_362_enable_2, 
                Q0=>open);
    myCkvModule_SLICE_151I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_18, 
                B1=>myCkvModule_counter_14, C1=>myCkvModule_counter_21, 
                D1=>myCkvModule_counter_20, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_n2654, B0=>myCkvModule_counter_6, 
                C0=>myCkvModule_counter_29, D0=>myCkvModule_counter_7, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n2654, 
                Q1=>open, OFX0=>open, F0=>myCkvModule_n2658, Q0=>open);
    myCkvModule_SLICE_152I: SLOGICB
      generic map (LUT0_INITVAL=>X"0004", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_0, 
                B1=>myCkvModule_counter_2, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>myCkvModule_n1908, B0=>myCkvModule_n681, 
                C0=>myCkvModule_n1902, D0=>myCkvModule_n2666, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n681, Q1=>open, 
                OFX0=>open, F0=>myCkvModule_n65, Q0=>open);
    myCkvModule_SLICE_153I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF7", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_7, 
                B1=>myCkvModule_counter_6, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>myCkvModule_n683, B0=>myCkvModule_counter_5, 
                C0=>myCkvModule_n2664, D0=>myCkvModule_n3080, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n683, Q1=>open, 
                OFX0=>open, F0=>myCkvModule_n1908, Q0=>open);
    myCkvModule_SLICE_154I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_25, 
                B1=>myCkvModule_counter_29, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>myCkvModule_n1878, B0=>myCkvModule_n1894, 
                C0=>myCkvModule_n1876, D0=>myCkvModule_n2306, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n2306, 
                Q1=>open, OFX0=>open, F0=>myCkvModule_n1902, Q0=>open);
    myCkvModule_SLICE_155I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_21, 
                B1=>myCkvModule_counter_24, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>myCkvModule_n1890, B0=>myCkvModule_n2308, 
                C0=>myCkvModule_counter_14, D0=>myCkvModule_counter_26, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>myCkvModule_n2308, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n1894, Q0=>open);
    myCkvModule_SLICE_156I: SLOGICB
      generic map (LUT0_INITVAL=>X"F7FF", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_n2204, 
                B1=>myCkvModule_n2216, C1=>myCkvModule_counter_24, 
                D1=>myCkvModule_counter_22, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_n683, B0=>myCkvModule_counter_4, 
                C0=>myCkvModule_n2224, D0=>myCkvModule_counter_3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n2224, 
                Q1=>open, OFX0=>open, F0=>myCkvModule_n2236, Q0=>open);
    myCkvModule_SLICE_157I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_10, 
                B1=>myCkvModule_counter_15, C1=>myCkvModule_counter_5, 
                D1=>myCkvModule_counter_2, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_n2212, B0=>myCkvModule_counter_17, 
                C0=>myCkvModule_counter_25, D0=>myCkvModule_counter_9, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n2212, 
                Q1=>open, OFX0=>open, F0=>myCkvModule_n2220, Q0=>open);
    myCkvModule_SLICE_158I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_28, 
                B1=>myCkvModule_counter_13, C1=>myCkvModule_counter_11, 
                D1=>myCkvModule_counter_19, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_n45, B0=>myCkvModule_n2462, 
                C0=>myCkvModule_counter_17, D0=>myCkvModule_counter_8, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n45, 
                Q1=>open, OFX0=>open, F0=>myCkvModule_n2666, Q0=>open);
    mySphModule_SLICE_159I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_17, 
                B1=>mySphModule_counter_28, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySphModule_n2592, B0=>mySphModule_n2602, 
                C0=>mySphModule_counter_27, D0=>mySphModule_counter_31, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySphModule_n2592, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n2612, Q0=>open);
    mySphModule_SLICE_160I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_9, 
                B1=>mySphModule_counter_16, C1=>mySphModule_n2610, 
                D1=>mySphModule_n1976, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_20, B0=>mySphModule_counter_23, 
                C0=>mySphModule_counter_4, D0=>mySphModule_counter_3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySphModule_n2626, 
                Q1=>open, OFX0=>open, F0=>mySphModule_n2610, Q0=>open);
    mySphModule_SLICE_161I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_n2618, 
                B1=>mySphModule_n2614, C1=>mySphModule_n2612, 
                D1=>mySphModule_n43, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_30, B0=>mySphModule_counter_8, 
                C0=>mySphModule_counter_18, D0=>mySphModule_counter_12, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySphModule_n2628, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n2618, Q0=>open);
    mySphModule_SLICE_162I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_n1976, 
                B1=>mySphModule_n3083, C1=>mySphModule_n3073, 
                D1=>mySphModule_n2048, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_23, B0=>mySphModule_counter_31, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>mySphModule_n2084, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n3073, Q0=>open);
    mySphModule_SLICE_163I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_29, 
                B1=>mySphModule_n2604, C1=>mySphModule_n2600, 
                D1=>mySphModule_counter_11, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_1, B0=>mySphModule_counter_15, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySphModule_n2614, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n2600, Q0=>open);
    mySphModule_SLICE_164I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_n1968, 
                B1=>mySphModule_n43, C1=>mySphModule_n1954, 
                D1=>mySphModule_n2592, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_23, B0=>mySphModule_counter_31, 
                C0=>mySphModule_counter_10, D0=>mySphModule_counter_27, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySphModule_n1978, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n1968, Q0=>open);
    mySphModule_SLICE_165I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_n2072, 
                B1=>mySphModule_n2064, C1=>mySphModule_n1800, 
                D1=>mySphModule_n3069, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_12, B0=>mySphModule_counter_8, 
                C0=>mySphModule_counter_27, D0=>mySphModule_counter_15, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySphModule_n2082, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n2064, Q0=>open);
    mySphModule_SLICE_166I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_n1806, 
                B1=>mySphModule_n1812, C1=>mySphModule_n1800, 
                D1=>mySphModule_n1792, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_12, B0=>mySphModule_counter_8, 
                C0=>mySphModule_counter_10, D0=>mySphModule_counter_23, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySphModule_n1820, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n1806, Q0=>open);
    mySphModule_SLICE_167I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_n2020, 
                B1=>mySphModule_n2010, C1=>mySphModule_n1786, 
                D1=>mySphModule_n3074, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_24, B0=>mySphModule_counter_19, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>mySphModule_n2028, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n3074, Q0=>open);
    mySphModule_SLICE_168I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_18, 
                B1=>mySphModule_n1802, C1=>mySphModule_n1786, 
                D1=>mySphModule_counter_30, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_24, B0=>mySphModule_counter_19, 
                C0=>mySphModule_counter_28, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySphModule_n1812, 
                Q1=>open, OFX0=>open, F0=>mySphModule_n1802, Q0=>open);
    mySphModule_SLICE_169I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_n1978, 
                B1=>mySphModule_n1668, C1=>mySphModule_n1980, 
                D1=>mySphModule_n1976, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_19, B0=>mySphModule_counter_24, 
                C0=>mySphModule_counter_22, D0=>mySphModule_counter_32, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySphModule_n407, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n1976, Q0=>open);
    mySphModule_SLICE_170I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_9, 
                B1=>mySphModule_counter_16, C1=>mySphModule_n43, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>mySphModule_counter_21, 
                B0=>mySphModule_counter_13, C0=>mySphModule_counter_25, 
                D0=>mySphModule_counter_14, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>mySphModule_n2026, Q1=>open, 
                OFX0=>open, F0=>mySphModule_n43, Q0=>open);
    mySphModule_SLICE_171I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_30, 
                B1=>mySphModule_counter_8, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySphModule_n3068, B0=>mySphModule_n1974, 
                C0=>mySphModule_n1794, D0=>mySphModule_counter_20, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySphModule_n3068, 
                Q1=>open, OFX0=>open, F0=>mySphModule_n1980, Q0=>open);
    mySphModule_SLICE_172I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFB", LUT1_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_6, 
                B1=>mySphModule_counter_7, C1=>mySphModule_counter_0, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>mySphModule_n1818, 
                B0=>mySphModule_n1668, C0=>mySphModule_n1820, 
                D0=>mySphModule_n1816, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>mySphModule_n1668, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n4, Q0=>open);
    mySphModule_SLICE_173I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_9, 
                B1=>mySphModule_counter_16, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySphModule_n3083, B0=>mySphModule_n1794, 
                C0=>mySphModule_counter_17, D0=>mySphModule_counter_31, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySphModule_n3083, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n1816, Q0=>open);
    mySphModule_SLICE_174I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBBB", LUT1_INITVAL=>X"0004")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_n2082, 
                B1=>mySphModule_n1668, C1=>mySphModule_n2084, 
                D1=>mySphModule_n1818, DI1=>'X', DI0=>'X', A0=>mySphModule_n43, 
                B0=>mySphModule_counter_5, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySphModule_n424, Q1=>open, 
                OFX0=>open, F0=>mySphModule_n1818, Q0=>open);
    mySphModule_SLICE_175I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_17, 
                B1=>mySphModule_counter_4, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySphModule_counter_1, B0=>mySphModule_n2062, 
                C0=>mySphModule_n2058, D0=>mySphModule_counter_28, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySphModule_n2058, 
                Q1=>open, OFX0=>open, F0=>mySphModule_n2072, Q0=>open);
    mySphModule_SLICE_176I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_29, 
                B1=>mySphModule_counter_30, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySphModule_counter_3, 
                B0=>mySphModule_counter_20, C0=>mySphModule_n1996, 
                D0=>mySphModule_counter_23, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>mySphModule_n1996, Q1=>open, 
                OFX0=>open, F0=>mySphModule_n2022, Q0=>open);
    mySphModule_SLICE_177I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_17, 
                B1=>mySphModule_counter_15, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySphModule_counter_26, B0=>mySphModule_n2014, 
                C0=>mySphModule_n2002, D0=>mySphModule_counter_28, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySphModule_n2002, 
                Q1=>open, OFX0=>open, F0=>mySphModule_n2020, Q0=>open);
    myLeModule_SLICE_178I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_21, 
                B1=>myLeModule_counter_17, C1=>myLeModule_counter_24, 
                D1=>myLeModule_counter_25, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_29, B0=>myLeModule_counter_21, 
                C0=>myLeModule_counter_17, D0=>myLeModule_counter_25, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2480, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n2562, Q0=>open);
    myCkvModule_SLICE_179I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_counter_9, 
                B1=>myCkvModule_counter_22, C1=>myCkvModule_counter_10, 
                D1=>myCkvModule_counter_15, DI1=>'X', DI0=>'X', 
                A0=>myCkvModule_counter_32, B0=>myCkvModule_counter_22, 
                C0=>myCkvModule_counter_15, D0=>myCkvModule_counter_9, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n2312, 
                Q1=>open, OFX0=>open, F0=>myCkvModule_n2664, Q0=>open);
    mySpvModule_SLICE_180I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_19, 
                B1=>mySpvModule_counter_22, C1=>mySpvModule_counter_18, 
                D1=>mySpvModule_counter_14, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_counter_13, B0=>mySpvModule_counter_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>mySpvModule_n2246, Q1=>open, OFX0=>open, 
                F0=>mySpvModule_n2244, Q0=>open);
    mySphModule_SLICE_181I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_8, 
                B1=>mySphModule_counter_12, C1=>mySphModule_counter_18, 
                D1=>mySphModule_counter_5, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_32, B0=>mySphModule_counter_22, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>mySphModule_n2010, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n1786, Q0=>open);
    myLeModule_SLICE_182I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_1, 
                B1=>myLeModule_counter_20, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>myLeModule_counter_18, B0=>myLeModule_counter_12, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>myLeModule_n2102, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n2096, Q0=>open);
    myCkvModule_SLICE_183I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFB", LUT1_INITVAL=>X"BBBB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myCkvModule_n45, 
                B1=>myCkvModule_counter_5, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>myCkvModule_n2330, B0=>myCkvModule_n683, 
                C0=>myCkvModule_n2322, D0=>myCkvModule_n45, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>myCkvModule_n1862, 
                Q1=>open, OFX0=>open, F0=>myCkvModule_n1681, Q0=>open);
    myLeModule_SLICE_184I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_31, 
                B1=>myLeModule_counter_23, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>myLeModule_counter_22, B0=>myLeModule_counter_10, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>myLeModule_n28, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n3075, Q0=>open);
    mySphModule_SLICE_185I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_10, 
                B1=>mySphModule_counter_11, C1=>mySphModule_counter_31, 
                D1=>mySphModule_counter_27, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_7, B0=>mySphModule_counter_2, 
                C0=>mySphModule_counter_6, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>mySphModule_n2014, Q1=>open, 
                OFX0=>open, F0=>mySphModule_n2602, Q0=>open);
    mySphModule_SLICE_186I: SLOGICB
      generic map (LUT0_INITVAL=>X"DFFF", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_9, 
                B1=>mySphModule_counter_16, C1=>mySphModule_counter_18, 
                D1=>mySphModule_counter_12, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_n1668, B0=>mySphModule_n2026, 
                C0=>mySphModule_counter_1, D0=>mySphModule_counter_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySphModule_n1974, 
                Q1=>open, OFX0=>open, F0=>mySphModule_n2036, Q0=>open);
    mySphModule_SLICE_187I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_26, 
                B1=>mySphModule_counter_27, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySphModule_counter_11, 
                B0=>mySphModule_counter_20, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySphModule_n1792, 
                Q1=>open, OFX0=>open, F0=>mySphModule_n1800, Q0=>open);
    mySphModule_SLICE_188I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySphModule_counter_10, 
                B1=>mySphModule_counter_26, C1=>mySphModule_counter_0, 
                D1=>mySphModule_counter_5, DI1=>'X', DI0=>'X', 
                A0=>mySphModule_counter_29, B0=>mySphModule_counter_15, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>mySphModule_n2604, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n1794, Q0=>open);
    mySpvModule_SLICE_189I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_3, 
                B1=>mySpvModule_counter_6, C1=>mySpvModule_counter_2, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>mySpvModule_counter_3, 
                B0=>mySpvModule_counter_2, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n1674, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n2772, Q0=>open);
    myLeModule_SLICE_190I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_n2112, 
                B1=>myLeModule_n45, C1=>myLeModule_counter_5, 
                D1=>myLeModule_counter_25, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_6, B0=>myLeModule_counter_7, 
                C0=>myLeModule_counter_4, D0=>myLeModule_counter_3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>myLeModule_n2130, 
                Q1=>open, OFX0=>open, F0=>myLeModule_n1714, Q0=>open);
    mySpvModule_SLICE_191I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_21, 
                B1=>mySpvModule_counter_15, C1=>mySpvModule_counter_0, 
                D1=>mySpvModule_counter_26, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_counter_27, B0=>mySpvModule_counter_25, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>mySpvModule_n1764, Q1=>open, OFX0=>open, 
                F0=>mySpvModule_n1756, Q0=>open);
    mySpvModule_SLICE_192I: SLOGICB
      generic map (LUT0_INITVAL=>X"1001", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_2, 
                B1=>mySpvModule_counter_26, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySpvModule_counter_11, 
                B0=>mySpvModule_counter_3, C0=>mySpvModule_counter_6, 
                D0=>mySpvModule_counter_8, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>mySpvModule_n2695, Q1=>open, 
                OFX0=>open, F0=>mySpvModule_n2516, Q0=>open);
    mySpvModule_SLICE_193I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_26, 
                B1=>mySpvModule_counter_16, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>mySpvModule_counter_15, 
                B0=>mySpvModule_counter_21, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n1920, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n2773, Q0=>open);
    mySpvModule_SLICE_194I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>mySpvModule_counter_27, 
                B1=>mySpvModule_counter_7, C1=>mySpvModule_counter_26, 
                D1=>mySpvModule_counter_30, DI1=>'X', DI0=>'X', 
                A0=>mySpvModule_n3081, B0=>mySpvModule_counter_23, 
                C0=>mySpvModule_counter_4, D0=>mySpvModule_counter_7, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>mySpvModule_n2278, 
                Q1=>open, OFX0=>open, F0=>mySpvModule_n1942, Q0=>open);
    myLeModule_SLICE_195I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_0, 
                B1=>myLeModule_counter_26, C1=>myLeModule_counter_17, 
                D1=>myLeModule_counter_14, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_27, B0=>myLeModule_counter_21, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>myLeModule_n2166, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n2104, Q0=>open);
    myLeModule_SLICE_196I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>myLeModule_counter_18, 
                B1=>myLeModule_counter_12, C1=>myLeModule_counter_31, 
                D1=>myLeModule_counter_4, DI1=>'X', DI0=>'X', 
                A0=>myLeModule_counter_23, B0=>myLeModule_counter_28, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>myLeModule_n2406, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n3078, Q0=>open);
    myLeModule_SLICE_197I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myLeModule_counter_4, 
                B0=>myLeModule_counter_3, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n3071, Q0=>open);
    myLeModule_SLICE_198I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myLeModule_counter_17, 
                B0=>myLeModule_counter_14, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n3067, Q0=>open);
    myLeModule_SLICE_199I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myLeModule_counter_0, 
                B0=>myLeModule_counter_2, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n3066, Q0=>open);
    myLeModule_SLICE_200I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myLeModule_counter_0, 
                B0=>myLeModule_counter_2, C0=>myLeModule_counter_7, 
                D0=>myLeModule_counter_6, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n810, Q0=>open);
    myLeModule_SLICE_201I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myLeModule_counter_0, 
                B0=>myLeModule_counter_26, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n2552, Q0=>open);
    myLeModule_SLICE_202I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myLeModule_counter_29, 
                B0=>myLeModule_counter_20, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n2402, Q0=>open);
    myLeModule_SLICE_203I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myLeModule_counter_20, 
                B0=>myLeModule_counter_14, C0=>myLeModule_counter_26, 
                D0=>myLeModule_counter_27, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n2482, Q0=>open);
    myLeModule_SLICE_204I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myLeModule_counter_6, 
                B0=>myLeModule_counter_7, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myLeModule_n3065, Q0=>open);
    mySpvModule_SLICE_205I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySpvModule_counter_23, 
                B0=>mySpvModule_counter_15, C0=>mySpvModule_counter_7, 
                D0=>mySpvModule_counter_21, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>mySpvModule_n2450, Q0=>open);
    mySpvModule_SLICE_206I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySpvModule_counter_29, 
                B0=>mySpvModule_counter_30, C0=>mySpvModule_counter_16, 
                D0=>mySpvModule_counter_28, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>mySpvModule_n2452, Q0=>open);
    mySpvModule_SLICE_207I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySpvModule_counter_16, 
                B0=>mySpvModule_counter_25, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>mySpvModule_n2703, Q0=>open);
    mySpvModule_SLICE_208I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySpvModule_counter_29, 
                B0=>mySpvModule_counter_32, C0=>mySpvModule_counter_12, 
                D0=>mySpvModule_counter_21, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>mySpvModule_n2715, Q0=>open);
    mySpvModule_SLICE_209I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySpvModule_counter_32, 
                B0=>mySpvModule_counter_0, C0=>mySpvModule_counter_28, 
                D0=>mySpvModule_counter_15, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>mySpvModule_n2280, Q0=>open);
    SLICE_210I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"2222", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>gp_c_1, B0=>sig_dly, C0=>'X', 
                D0=>'X', M0=>gp_c_1, CE=>'X', CLK=>clk_divOut, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>led_c_0, 
                Q0=>sig_dly);
    myCkvModule_SLICE_211I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_20, 
                B0=>myCkvModule_counter_29, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n1838, Q0=>open);
    myCkvModule_SLICE_212I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_4, 
                B0=>myCkvModule_counter_27, C0=>myCkvModule_counter_0, 
                D0=>myCkvModule_counter_23, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n2652, Q0=>open);
    myCkvModule_SLICE_213I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_24, 
                B0=>myCkvModule_counter_2, C0=>myCkvModule_counter_3, 
                D0=>myCkvModule_counter_5, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n2650, Q0=>open);
    myCkvModule_SLICE_214I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_27, 
                B0=>myCkvModule_counter_4, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n1878, Q0=>open);
    myCkvModule_SLICE_215I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_12, 
                B0=>myCkvModule_counter_23, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n1876, Q0=>open);
    myCkvModule_SLICE_216I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_18, 
                B0=>myCkvModule_counter_20, C0=>myCkvModule_counter_31, 
                D0=>myCkvModule_counter_3, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n1890, Q0=>open);
    myCkvModule_SLICE_217I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_18, 
                B0=>myCkvModule_counter_26, C0=>myCkvModule_counter_24, 
                D0=>myCkvModule_counter_23, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n1854, Q0=>open);
    myCkvModule_SLICE_218I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_20, 
                B0=>myCkvModule_counter_27, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n2204, Q0=>open);
    myCkvModule_SLICE_219I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_29, 
                B0=>myCkvModule_counter_12, C0=>myCkvModule_counter_18, 
                D0=>myCkvModule_counter_26, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n2216, Q0=>open);
    myCkvModule_SLICE_220I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_14, 
                B0=>myCkvModule_counter_31, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n2202, Q0=>open);
    myCkvModule_SLICE_221I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_16, 
                B0=>myCkvModule_counter_10, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n2462, Q0=>open);
    myCkvModule_SLICE_222I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_25, 
                B0=>myCkvModule_counter_27, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n1836, Q0=>open);
    myCkvModule_SLICE_223I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_9, 
                B0=>myCkvModule_counter_16, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n1830, Q0=>open);
    myCkvModule_SLICE_224I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_23, 
                B0=>myCkvModule_counter_27, C0=>myCkvModule_counter_14, 
                D0=>myCkvModule_counter_18, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n2320, Q0=>open);
    myCkvModule_SLICE_225I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>myCkvModule_counter_3, 
                B0=>myCkvModule_counter_4, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>myCkvModule_n437, Q0=>open);
    mySphModule_SLICE_226I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySphModule_counter_26, 
                B0=>mySphModule_counter_11, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n1954, Q0=>open);
    mySphModule_SLICE_227I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySphModule_counter_4, 
                B0=>mySphModule_counter_1, C0=>mySphModule_counter_3, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>mySphModule_n449, Q0=>open);
    mySphModule_SLICE_228I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySphModule_counter_4, 
                B0=>mySphModule_counter_1, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n4_adj_402, Q0=>open);
    mySphModule_SLICE_229I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySphModule_counter_30, 
                B0=>mySphModule_counter_2, C0=>mySphModule_counter_3, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>mySphModule_n2062, Q0=>open);
    mySphModule_SLICE_230I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySphModule_counter_29, 
                B0=>mySphModule_counter_18, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n2048, Q0=>open);
    mySphModule_SLICE_231I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>mySphModule_counter_10, 
                B0=>mySphModule_counter_26, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>mySphModule_n3069, Q0=>open);
    myCtrlModule_SLICE_232I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>clk_divOut, B0=>led_c_4_c, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n3082, 
                Q0=>open);
    myCtrlModule_SLICE_233I: SLOGICB
      generic map (LUT0_INITVAL=>X"7777")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>clk_divOut, B0=>led_c_4_c, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>mySphModule_clock_N_362, Q0=>open);
    SLICE_234I: SLOGICB
      generic map (LUT0_INITVAL=>X"0000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>GND_net, Q0=>open);
    clk_25mhzI: clk_25mhzB
      port map (PADDI=>buf_CLKI, clk25mhz=>clk_25mhz);
    btn_4_I: btn_4_B
      port map (PADDI=>led_c_4_c, btn4=>btn(4));
    led_0_I: led_0_B
      port map (PADDO=>led_c_0, led0=>led(0));
    led_1_I: led_1_B
      port map (PADDO=>n3082, led1=>led(1));
    led_2_I: led_2_B
      port map (PADDO=>led_c_4_c, led2=>led(2));
    led_3_I: led_3_B
      port map (led3=>led(3));
    led_4_I: led_4_B
      port map (led4=>led(4));
    led_5_I: led_5_B
      port map (led5=>led(5));
    led_6_I: led_6_B
      port map (led6=>led(6));
    led_7_I: led_7_B
      port map (led7=>led(7));
    gp_0_I: gp_0_B
      port map (PADDO=>n296, gp0=>gp(0));
    gp_1_I: gp_1_B
      port map (PADDO=>gp_c_1, gp1=>gp(1));
    gp_2_I: gp_2_B
      port map (PADDO=>gp_c_2, gp2=>gp(2));
    gp_3_I: gp_3_B
      port map (PADDO=>gp_c_3, gp3=>gp(3));
    gp_4_I: gp_4_B
      port map (PADDO=>n3082, gp4=>gp(4));
    gp_5_I: gp_5_B
      port map (gp5=>gp(5));
    gp_6_I: gp_6_B
      port map (gp6=>gp(6));
    gp_7_I: gp_7_B
      port map (gp7=>gp(7));
    gp_8_I: gp_8_B
      port map (gp8=>gp(8));
    gp_9_I: gp_9_B
      port map (gp9=>gp(9));
    gp_10_I: gp_10_B
      port map (gp10=>gp(10));
    gp_11_I: gp_11_B
      port map (gp11=>gp(11));
    gp_12_I: gp_12_B
      port map (gp12=>gp(12));
    myPll_PLLInst_0I: myPll_PLLInst_0
      port map (CLKI=>buf_CLKI, CLKFB=>clk_100mhz, STDBY=>GND_net, 
                CLKOP=>clk_100mhz);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, ECP5U;
  configuration Structure_CON of top is
    for Structure
    end for;
  end Structure_CON;


