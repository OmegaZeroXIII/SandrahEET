APPEND BSANDR

IF ~Global("SanJaheirPCBG2","LOCALS",1) ~THEN BEGIN SanPCJaheirBg210
SAY @0
IF~~THEN REPLY @1GOTO SanPCJaheirBg211
END

IF ~~THEN BEGIN SanPCJaheirBg211
SAY@2
IF~~THEN REPLY @3DO ~SetGlobal("SanJaheirPCBG2","LOCALS",2)~GOTO SanPCJaheirBg212
END

IF ~~THEN BEGIN SanPCJaheirBg212
SAY@4
IF~~THEN REPLY @5DO~SetGlobal("CheckJaheiraMatch","GLOBAL",1)SetGlobal("JaheiraMatch","GLOBAL",1)~
EXIT
END
END

CHAIN
IF~Global("SanJaheirBG2","GLOBAL",2) ~THEN BSANDR SanJahRomPC1
@6
DO~SetGlobal("SanJaheirBG2","GLOBAL",3) ~
== BJAHEIR @7
== BSANDR @8
== BJAHEIR @9
== BSANDR @10
== BJAHEIR @11
== BSANDR @12
== BJAHEIR @13
== BSANDR @14
== BJAHEIR @15
EXIT

CHAIN
IF~Global("SanJaheirBG2","GLOBAL",4) ~THEN BSANDR SanJahRomPC2
@16
DO~SetGlobal("SanJaheirBG2","GLOBAL",5) ~
== BJAHEIR @17
== BSANDR @18
== BJAHEIR @19
== BSANDR @20
== BJAHEIR @21
== BSANDR @22
== BJAHEIR @23
== BSANDR @24
== BJAHEIR @25
= @26
EXIT

CHAIN
IF~Global("SanJaheirBG2","GLOBAL",6) ~THEN BSANDR SanJahRomPC3
@27
DO~SetGlobal("SanJaheirBG2","GLOBAL",7) ~
== BJAHEIR @28
== BSANDR @29
== BJAHEIR @30
== BSANDR @31
== BJAHEIR @32
== BSANDR @33
== BJAHEIR @34
== BSANDR @35
== BJAHEIR @36
== BSANDR @37
== BJAHEIR @38
== BSANDR @39
== BJAHEIR @40
== BSANDR @41
== BJAHEIR @42
== BSANDR @43
== BJAHEIR @44
== BSANDR @45
== BJAHEIR @46
== BSANDR @47
== BJAHEIR @48
== BSANDR @49
EXIT

CHAIN
IF~Global("SanGalvFi","LOCALS",1) ~THEN BSANDR SanJahRomPCGalv
@50
DO~SetGlobal("SanGalvFi","LOCALS",2) ~
== BJAHEIR @51
== BSANDR @52
== BJAHEIR @53
== BSANDR @54
== BJAHEIR @55
== BSANDR @56
== BJAHEIR @57
== BSANDR @58
== BJAHEIR @59
== BSANDR @60
== BJAHEIR @61
EXIT

CHAIN
IF~Global("SanGalvFi","LOCALS",4) ~THEN BSANDR SanJahRomPCGal2
@62
DO~SetGlobal("SanGalvFi","LOCALS",5) ~
== BJAHEIR @63
== BSANDR @64
== BJAHEIR @65
== BSANDR @66
== BJAHEIR @67
== BSANDR @68
== BJAHEIR @69
== BSANDR @70
== BJAHEIR @71EXIT

CHAIN
IF~Global("SanJahMiss","LOCALS",3)~THEN BSANDR SanJahRomPCRet
@72
DO~SetGlobal("SanJahMiss","LOCALS",4)~
== BJAHEIR @73
== BSANDR @74
== BJAHEIR @75
=@76
EXIT

CHAIN
IF~Global("SanGalvFi","LOCALS",7)~THEN BSANDR SanJahRomPCFin
@77
DO~SetGlobal("SanGalvFi","LOCALS",8)~
== BJAHEIR @78
== BSANDR @79
== BJAHEIR @80
== BSANDR @81
== BJAHEIR @82
== BSANDR @83
== BJAHEIR @84DO~AddXPObject("CVSandr",11000)~EXIT

CHAIN
IF~Global("SanJaheirBG2","GLOBAL",9)~THEN BSANDR SanJahRomPCRose
@85
DO~SetGlobal("SanJaheirBG2","GLOBAL",10)~
== BJAHEIR @86
== BSANDR @87
== BJAHEIR @88
== BSANDR @89
== BJAHEIR @90
== BSANDR @91
EXIT

CHAIN
IF~Global("JahSanMama","CVDre1",1)~THEN BSANDR JarWDGardn
@92
DO ~SetGlobal("JahSanMama","CVDre1",2)~
== BJAHEIR @93
= @94
== BSANDR @95
== BJAHEIR @96
== BSANDR @97
== BJAHEIR @98
=@99
== BSANDR @100
== BJAHEIR @101
EXIT

CHAIN
IF WEIGHT #-31~Global("SanJaheirBG2","GLOBAL",11)~THEN BJaheir SanJahRomPCEnd
@102
DO~SetGlobal("SanJaheirBG2","GLOBAL",12)~
== BSANDR @103
== BJAHEIR @104
=@105
== BSANDR @106
== BJAHEIR @107
=@108
END
++@109+ SanJahRomPCEnd2
++@110+ SanJahRomPCEnd2

CHAIN
IF~~THEN BJaheir  SanJahRomPCEnd2
@111
DO~ChangeAIScript("",DEFAULT) LeaveParty() SetLeavePartyDialogFile() MoveGlobal("AR0309",Myself,[776.706])~EXIT

APPEND JAHEIP
IF WEIGHT #-11~Global("SanJaheirBG2","GLOBAL",12) AreaCheck("ar0309")~THEN BEGIN RetBG2Love
SAY@112
IF~~THEN GOTO 13
END
END