APPEND NTDextPB

IF WEIGHT #-1~ Global("NTotSCSpawn","BG0400",1) ~THEN BEGIN 22
SAY @0
IF~~THEN REPLY@1GOTO 23
IF~~THEN REPLY@2GOTO 23
IF~~THEN REPLY@3GOTO 23
END
  
IF~~THEN BEGIN 23
SAY@4
IF ~~THEN DO ~CreateCreature("CVZLord",[1553.3284],10) SetGlobal("DexterWrong","GLOBAL",1) SetGlobal("NTotSCSpawn","BG0400",2) ~EXIT
END

IF WEIGHT #-2~AreaCheck("BG0400") GlobalGT("DexterWrong","GLOBAL",1)~THEN BEGIN 24
  SAY @5
  IF ~~THEN DO ~Enemy()~EXIT
END
END