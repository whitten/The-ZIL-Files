"JOURNEY for
		      		JOURNEY
	(c) Copyright 1988 Infocom, Inc.  All Rights Reserved."


<VERSION YZIP>

<ZIP-OPTIONS COLOR MOUSE DISPLAY MENU>
                                  
<FREQUENT-WORDS?>

<COMPILATION-FLAG DEBUGGING <>>

<DEFINE-SEGMENT LAVOS T DWARVES LAKE>
<DEFINE-SEGMENT DWARVES <> LAVOS>
<DEFINE-SEGMENT ORC-FIGHT <> DWARVES STAIR>
<DEFINE-SEGMENT FOREST <>>
<DEFINE-SEGMENT TANGLEWOOD <> FOREST>
<DEFINE-SEGMENT RIVER <> LAVOS FOREST>
<DEFINE-SEGMENT STAIR <> DWARVES LAKE>
<DEFINE-SEGMENT LAKE <> NYMPHS FOREST>
<DEFINE-SEGMENT NYMPHS <> LAKE FOREST>
<DEFINE-SEGMENT PART2 <> RIVER CAVERNS TANGLEWOOD>
<DEFINE-SEGMENT CAVERNS <> PART2 MINES>
<DEFINE-SEGMENT MINES <> CAVERNS TANGLEWOOD>
<DEFINE-SEGMENT CASTLE <> TANGLEWOOD MILL>
<DEFINE-SEGMENT MILL <> CASTLE>
<DEFINE-SEGMENT ZAN <> CASTLE MILL BOAT>
<DEFINE-SEGMENT BOAT <> ZAN>

<SET REDEFINE!- T>
<SET ZREDEFINE T>

<DIRECTIONS MOVE>

<GLOBAL BORDER-FLAG <>>  ;"If T, paint a border around the screen..."
<GLOBAL FONT3-FLAG T>    ;"If T, can use special character font 3..."
<GLOBAL FWC-FLAG T>      ;"If T, uses fixed-width font for commands..."
<GLOBAL BLACK-PICTURE-BORDER T>

<GLOBAL INTERPRETER 3>

<GLOBAL INIT-TEXT-LEFT 32>
<SETG INIT-TEXT-LEFT 32>

<GLOBAL COMMAND-START-LINE 20>

<GLOBAL COMMAND-WIDTH 16>
<SETG COMMAND-WIDTH 16>

<GLOBAL NAME-WIDTH 15>
<SETG NAME-WIDTH 15>

<GLOBAL TOP-SCREEN-LINE 1>

<GLOBAL PARTY-COMMAND-COLUMN 2>
<GLOBAL SCREEN-HEIGHT 0>
<GLOBAL SCREEN-WIDTH 0>
<GLOBAL NAME-COLUMN 0>
<GLOBAL CHR-COMMAND-COLUMN 0>
<GLOBAL COMMAND-OBJECT-COLUMN 0>

<GLOBAL RIGHT-COLUMN-LEFT-EDGE 0>
<GLOBAL RIGHT-COLUMN-WIDTH 1>
<SETG RIGHT-COLUMN-WIDTH 1>

<GLOBAL PARTY-MAX 4>
<GLOBAL GRAPHIC-WINDOW-X 0>
<GLOBAL GRAPHIC-WINDOW-Y 0>

<PROPDEF KBD <> (KBD X:FIX = 1 <BYTE .X>)>
<PROPDEF KBD2 <> (KBD2 X:FIX = 1 <BYTE .X>)>
<PROPDEF TRAVEL-COMMANDS <>
	 (TRAVEL-COMMANDS "MANY" CMD:FCN = <> "MANY" <WORD .CMD>)>
<PROPDEF PROVISION-COMMANDS <>
	 (PROVISION-COMMANDS "MANY" CMD:FCN = <> "MANY" <WORD .CMD>)>
<PROPDEF FIGHT-COMMANDS <>
	 (FIGHT-COMMANDS "MANY" CMD:FCN = <> "MANY" <WORD .CMD>)>
<PROPDEF OPTION-COMMANDS <>
	 (OPTION-COMMANDS "MANY" CMD:FCN = <> "MANY" <WORD .CMD>)>
<PROPDEF MODE-COMMANDS <>
	 (MODE-COMMANDS "MANY" CMD:FCN = <> "MANY" <WORD .CMD>)>
<PROPDEF MIX-COLOR <>
	 (MIX-COLOR "MANY" S:STRING = <> "MANY" <STRING .S>)>
<PROPDEF MIX-SPELL <>
	 (MIX-SPELL "MANY" O:OBJECT = <> "MANY" <OBJECT .O>)>
<PROPDEF ATTACK <> (ATTACK "MANY" NUM:FIX = <> "MANY" <BYTE .NUM>)>
<PROPDEF DEFEND <> (DEFEND "MANY" NUM:FIX = <> "MANY" <BYTE .NUM>)>
<PROPDEF CAST-LIMIT 1>

<DEFMAC IN-PARTY? ('FOO)
	<FORM FSET? .FOO ',IN-PARTY>>

<DEFMAC ACTION? (FOO)
	<FORM EQUAL?
	      ',ACTION
	      <FORM GVAL
		    <PARSE <STRING <SPNAME .FOO> "-COMMAND">>>>>

<DEFMAC OBJECT? (FOO)
	<FORM EQUAL?
	      ',ACTION-OBJECT
	      <FORM GVAL .FOO>>>

<DEFMAC PRSI? (FOO)
	<FORM EQUAL?
	      ',ACTION-PRSI
	      <FORM GVAL .FOO>>>

<DEFMAC SET-TEMP ('FOO)
        <FORM PUTP ',HERE ',P?TEMP .FOO>>

<DEFMAC GET-TEMP ()
        '<GETP ,HERE ,P?TEMP>>

<DEFMAC CLEAR-TEMP ()
        '<PUTP ,HERE ,P?TEMP 0>>

<DEFMAC O-COUNT ()
        '<GET ,O-TABLE 0>>

<DEFMAC CLEAR-O-TABLE ()
        '<PUT ,O-TABLE 0 0>>

<DEFMAC RFATAL ()
	'<PROG () <PUSH 8> <RSTACK>>>

<DEFMAC PROB ('BASE?)
	<FORM NOT <FORM L? .BASE? '<RANDOM 100>>>>

<DEFMAC CANCEL? ()
        '<EQUAL? ,ACTION-OBJECT ,CANCEL-OBJECT>>

<DEFMAC GDEF (NAM 'STR "OPT" ('NUM 0))
        <COND (<G? .NUM 0>
	       <FORM CONSTANT .NAM .NUM>)
	      (T
	       <FORM CONSTANT .NAM .STR>)>>

;"Common"

<INSERT-FILE "output" T>
<INSERT-FILE "input" T>
<INSERT-FILE "intro" T>
<INSERT-FILE "commands" T>
<INSERT-FILE "common" T>
<INSERT-FILE "controls" T>
<INSERT-FILE "characters" T>
<INSERT-FILE "objects" T>
<INSERT-FILE "spells" T>
<INSERT-FILE "tales" T>
<INSERT-FILE "combat" T>

;"Part Ia"

<INSERT-FILE "lavos" T>

;"Part Ib"

<INSERT-FILE "dwarves" T>
<INSERT-FILE "forest" T>
<INSERT-FILE "river" T>
<INSERT-FILE "prison" T>
<INSERT-FILE "stair" T>
<INSERT-FILE "lake" T>
<INSERT-FILE "hermit" T>
<INSERT-FILE "astrix" T>
	
;"Part II (a)"

<INSERT-FILE "part2" T>
<INSERT-FILE "mines" T>
<INSERT-FILE "flume" T>
<INSERT-FILE "tomb" T>

;"Part II (b)"

<INSERT-FILE "fog" T>
<INSERT-FILE "trap" T>

;"Part III"

<INSERT-FILE "zan" T>
<INSERT-FILE "wharf" T>
<INSERT-FILE "voyage" T>
<INSERT-FILE "island" T>

;"Hints"

<INSERT-FILE "hints" T>

;"Graphics"

<INSERT-FILE "graphics" T>
