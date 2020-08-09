APPEND BPNajim

IF WEIGHT #-8~Global("BAELOTH_DEFEATED","GLOBAL",1) GlobalLT("BPNAJIM_DIALOG","GLOBAL",50) InParty("CVSandr")~THEN BEGIN OutSan1
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1) ClearAllActions() StartCutScene("CVCut305")~EXIT
IF~~THEN REPLY@2GOTO OutSan2
IF~~THEN REPLY@3EXIT
END

IF~~THEN BEGIN OutSan2
SAY@4
IF~~THEN REPLY@1DO~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1) ClearAllActions() StartCutScene("CVCut305")~EXIT
IF~~THEN REPLY@5EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("BATTLE_COMPLETE","GLOBAL",2)
Global("T3_B2","GLOBAL",2) ~THEN BEGIN san13
SAY @6
IF~~THEN DO~GiveGoldForce(1000)
SetGlobal("T3_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",302)
StartCutScene("CUTBP03")
Wait(2)
Deactivate("BPNAJIM")~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("TIER","GLOBAL",3) GlobalLT("BPNAJIM_DIALOG","GLOBAL",30) ~THEN BEGIN san10
SAY ~Never have I witnessed a mortal fret Baeloth so. I must confess to taking a certain pleasure in witnessing his dismay. Take this gift. I have added something extra. Perhaps you will have a better chance than Baeloth intends.~[BPL304]
IF ~~THEN REPLY  @8DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",30)
GiveGoldForce(1000)
~GOTO 11
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("TIER","GLOBAL",2) GlobalLT("BPNAJIM_DIALOG","GLOBAL",20) ~THEN BEGIN san5
SAY ~Impressive, mortal. Your feats in the arena have become... a frequent topic of conversation. Perhaps you will set a new record for longest surviving combatant.~[BPL205]
IF ~~THEN REPLY @10DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",20)~GOTO san6
IF ~~THEN REPLY @11DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",20) ~GOTO san7
IF ~~THEN REPLY @12DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",20)
~GOTO san8
END

IF ~~THEN BEGIN san6
SAY ~No. Baeloth has tasked me with giving you this reward for your outstanding performance. Take it, and prepare for your next battle.~[BPL206]
IF ~~THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(1000)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~EXIT
END

IF ~~THEN BEGIN san7
SAY ~You overestimate your abilities, <RACE>. Baeloth has tasked me with giving you this reward for your outstanding performance. Take it, and prepare for your next battle.~[BPL207]
IF ~~THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(1000)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~EXIT
END

IF ~~THEN BEGIN san8
SAY ~Baeloth has tasked me with giving you this reward for your outstanding performance. Take it, and prepare for your next battle.~[BPL208]
IF ~~THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(1000)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~EXIT
END

END

BEGIN CVWDDWA
IF~Global("SanPitsWD","Global",8)~THEN BEGIN Ret1
SAY@16
IF ~~THEN REPLY @17DO~ActionOverride("CVWDDWA",EscapeAreaDestroy(30))~EXIT 
END

IF ~RandomNum(3,1) ~THEN BEGIN 0
SAY  @18
IF~~THEN EXIT
END

IF ~RandomNum(3,2) ~THEN BEGIN 1
SAY @19
IF ~~THEN REPLY @20GOTO 2
IF ~~THEN REPLY @21GOTO 3
IF ~Global("SanPitsWD","Global",1) !InParty("Baeloth")~THEN REPLY @22GOTO 4
END

IF ~~THEN BEGIN 2
SAY @23
IF ~~THEN EXIT
END

IF ~~THEN BEGIN 3
SAY @24
IF ~~THEN EXIT
END

IF ~~THEN BEGIN 4
SAY @25
=@26
IF ~~THEN DO~SetGlobal("SanPitsWD","Global",2)~EXIT
END

IF ~RandomNum(3,3) ~THEN BEGIN 5
SAY @27
IF ~Global("SanPitsWD","Global",1) !InParty("Baeloth")~THEN REPLY @22GOTO 4
IF ~OR(2) GlobalGT("SanPitsWD","Global",1) InParty("Baeloth")~THEN EXIT
END

CHAIN
IF~Global("SanPitsWD","Global",4) ~THEN CVSandrJ BPWD1
@28
=@29
DO~SetGlobal("SanPitsWD","Global",5)~
END
++@30+ BPWD2
++@31+ BPWD2

CHAIN
IF~~THEN CVSandrJ BPWD2
@32EXIT

CHAIN
IF~Global("SanPitsWD","Global",6) ~THEN CVSandrJ BPWD3
@33
DO~SetGlobal("SanPitsWD","Global",7)~
END
++@34+ BPWD4
++@35+ BPWD4

CHAIN
IF~~THEN CVSandrJ BPWD4
@36
END
++@37+ BPWD5
++@38+ BPWD5

CHAIN
IF~~THEN CVSandrJ BPWD5
@39
=@40
END
++@41+ BPWD6
++@42+ BPWD6

CHAIN
IF~~THEN CVSandrJ BPWD6
@43EXIT

CHAIN
IF~Global("SanPitsEnd","Global",1)~THEN CVSandrJ BPWDE1
@44
DO~SetGlobal("SanPitsEnd","Global",2)~
END
++@45+ BPWDE2
++@46+ BPWDE2

CHAIN
IF~~THEN CVSandrJ BPWDE2
@47EXIT

APPEND BPBaelot

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T0_B1","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",1) ~THEN BEGIN san12
SAY ~That certainly could have gone worse. You've proven you can stamp out the weakest of opponents. Now let's see how you do against some who have eaten in the last tenday!~[BPT0B102]
  IF ~~THEN DO ~GiveGoldForce(50)
SetGlobal("T0_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",1)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2)  Global("T0_B2","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",2) ~THEN BEGIN san14
SAY ~Well done, my precious pugilists! You've certainly proven that I picked well when I picked you to perish in the Black Pits!~[BPT0B202]
  IF ~~THEN DO ~GiveGoldForce(50)
SetGlobal("T0_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",2)
SetGlobal("TIER","GLOBAL",1)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2)Global("T1_B1","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",101) ~THEN BEGIN san16
SAY ~Congratulations, you have slain a bunch of boozy bumblers. Najim shall ensure that you are awarded appropriately.~[BPT1B102]
IF ~~THEN DO ~GiveGoldForce(75)
SetGlobal("T1_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",101)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B2","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",102) ~THEN BEGIN san19
SAY ~Goodness! The look on their faces when they realized they would never again see those disgusting dens they call home. I think that deserves a bonus.~[BPT1B202]
IF ~~THEN DO ~GiveGoldForce(200)
SetGlobal("T1_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",102)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B2","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",102) GlobalGT("LAST_BATTLE","GLOBAL",102) ~THEN BEGIN san20
SAY ~Goodness! The look on their faces when they realized they would never again see those disgusting dens they call home. I think that deserves a bonus.~[BPT1B202]
IF ~~THEN DO ~GiveGoldForce(100)
SetGlobal("T1_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B3","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",103) ~THEN BEGIN san22
SAY ~Uncanny! You seem to have a knack for killing things that are already dead. If only you displayed a little more flair and enthusiasm for your work.~[BPT1B302]
IF ~~THEN DO ~GiveGoldForce(225)
SetGlobal("T1_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",103)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B3","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",103) GlobalGT("LAST_BATTLE","GLOBAL",103) ~THEN BEGIN san23
SAY ~Uncanny! You seem to have a knack for killing things that are already dead. If only you displayed a little more flair and enthusiasm for your work.~[BPT1B302]
IF ~~THEN DO ~GiveGoldForce(115)
SetGlobal("T1_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B4","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",104) ~THEN BEGIN san25
SAY  ~Well, you may be able to take a hit, but you certainly won't make one fighting such dull brutes. I must provide a more engaging foe for our next fracas!~[BPT1B402]
IF ~~THEN DO ~GiveGoldForce(250)
SetGlobal("T1_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",104)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2)Global("T1_B4","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",104) GlobalGT("LAST_BATTLE","GLOBAL",104)~THEN BEGIN san26
SAY ~Well, you may be able to take a hit, but you certainly won't make one fighting such dull brutes. I must provide a more engaging foe for our next fracas!~[BPT1B402]
IF ~~THEN DO ~GiveGoldForce(125)
SetGlobal("T1_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B5","GLOBAL",2)GlobalLT("LAST_BATTLE","GLOBAL",105)~THEN BEGIN san28
SAY ~Inconceivable! Get out of here, and take your reward with you.~[BPT1B502]
IF ~~THEN DO ~SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",105)
SetGlobal("T1_B5","GLOBAL",-1)
SetGlobal("TIER","GLOBAL",2)
GiveGoldForce(300)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2)Global("T1_B5","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",105)GlobalGT("LAST_BATTLE","GLOBAL",105) ~THEN BEGIN san29
SAY ~Inconceivable! Get out of here, and take your reward with you.~[BPT1B502]
IF ~~THEN DO ~SetGlobal("T1_B5","GLOBAL",-1)
GiveGoldForce(150)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B1","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",201) ~THEN BEGIN san35
SAY ~After that last contest, I don't know whether to call you a gladiator or an exterminator.~[BPT2B102]
IF ~~THEN DO ~GiveGoldForce(400)
SetGlobal("T2_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",201)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B1","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",201) GlobalGT("LAST_BATTLE","GLOBAL",201) ~THEN BEGIN san36
SAY  ~After that last contest, I don't know whether to call you a gladiator or an exterminator.~[BPT2B102]
IF ~~THEN DO ~GiveGoldForce(200)
SetGlobal("T2_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B2","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",202)~THEN BEGIN san38
SAY ~Again, you prove yourself a skilled swatter of insects. Perhaps what you need are some enemies with real backbone!~[BPT2B202]
IF ~~THEN DO ~GiveGoldForce(450)
SetGlobal("T2_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",202)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B2","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",202)GlobalGT("LAST_BATTLE","GLOBAL",202) ~THEN BEGIN san39
SAY ~Again, you prove yourself a skilled swatter of insects. Perhaps what you need are some enemies with real backbone!~[BPT2B202]
  IF ~~THEN DO ~GiveGoldForce(225)
SetGlobal("T2_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B3","GLOBAL",2)GlobalLT("LAST_BATTLE","GLOBAL",203) ~THEN BEGIN san41
SAY ~Hmm... I didn't think you'd sidestep all those traps I instructed them to set up. You should be a pile of constituent body parts right now! Bah, take your reward and choke on it.~[BPT2B302]
IF ~~THEN DO ~GiveGoldForce(500)
SetGlobal("T2_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",203)
TriggerActivation("GREASETRAP",FALSE)
TriggerActivation("ARROWTRAP1",FALSE)
TriggerActivation("ARROWTRAP2",FALSE)
TriggerActivation("ARROWTRAP3",FALSE)
TriggerActivation("ARROWTRAP4",FALSE)
TriggerActivation("ARROWTRAP5",FALSE)
TriggerActivation("ARROWTRAP6",FALSE)
TriggerActivation("STINKYTRAP",FALSE)
TriggerActivation("JERKTRAP",FALSE)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B3","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",203) GlobalGT("LAST_BATTLE","GLOBAL",203) ~THEN BEGIN san42
SAY ~Hmm... I didn't think you'd sidestep all those traps I instructed them to set up. You should be a pile of constituent body parts right now! Bah, take your reward and choke on it.~[BPT2B302]
IF ~~THEN DO ~GiveGoldForce(250)
SetGlobal("T2_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
TriggerActivation("GREASETRAP",FALSE)
TriggerActivation("ARROWTRAP1",FALSE)
TriggerActivation("ARROWTRAP2",FALSE)
TriggerActivation("ARROWTRAP3",FALSE)
TriggerActivation("ARROWTRAP4",FALSE)
TriggerActivation("ARROWTRAP5",FALSE)
TriggerActivation("ARROWTRAP6",FALSE)
TriggerActivation("STINKYTRAP",FALSE)
TriggerActivation("JERKTRAP",FALSE)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B4","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",204)~THEN BEGIN san44
SAY ~That was hardly fair, routing your rival's reinforcements. But you have given me a great idea. What this contest needs are some fresh faces, and I have just the plan to provide some.~[BPT2B402]
IF ~~THEN DO ~GiveGoldForce(550)
SetGlobal("T2_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",204)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B4","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",204) GlobalGT("LAST_BATTLE","GLOBAL",204) ~THEN BEGIN san45
SAY ~That was hardly fair, routing your rival's reinforcements. But you have given me a great idea. What this contest needs are some fresh faces, and I have just the plan to provide some.~[BPT2B402]
IF ~~THEN DO ~GiveGoldForce(275)
SetGlobal("T2_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B5","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",205) GlobalGT("LAST_BATTLE","GLOBAL",205)~THEN BEGIN san48
SAY ~Get. Out. Get out! GET OUT OF MY SIGHT BEFORE I BURN YOUR EYES FROM THEIR SOCKETS!~[BPT2B502]
IF ~~THEN REPLY@60DO ~GiveGoldForce(300)
SetGlobal("T2_B5","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("TIER","GLOBAL",3)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) !Global("START_BATTLE","GLOBAL",0)Global("T3_B1","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",301) ~THEN BEGIN san54
SAY ~Oh, this is no fun! Your neck remains unscathed and your pantaloons are rapidly drying! What a waste of good slimes...~[BPT3B104]
IF ~~THEN DO ~GiveGoldForce(800)
SetGlobal("T3_B1","GLOBAL",-1)
SetGlobal("LAST_BATTLE","GLOBAL",301)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B1","GLOBAL",2) OR(2)
Global("LAST_BATTLE","GLOBAL",301) GlobalGT("LAST_BATTLE","GLOBAL",301)~THEN BEGIN san56
SAY ~Oh, this is no fun! Your neck remains unscathed and your pantaloons are rapidly drying! What a waste of good slimes...~[BPT3B104]
IF ~~THEN DO ~GiveGoldForce(400)
SetGlobal("T3_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B2","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",302) ~THEN BEGIN san59
SAY~What a despicable display of enchanted weapons. Hm, it's almost as if someone gave them advice. Was it you, Najim?~[BPT3B202]
IF ~~THEN DO ~SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
CreateVisualEffect("spdimndr",[591.503])
PlaySound("EFF_M13")
Wait(4)
Activate("BPNAJIM")
ActionOverride("BPNAJIM",StartDialogNoSet(Player1))
~EXTERN BPNAJIM san13
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B2","GLOBAL",2)OR(2) Global("LAST_BATTLE","GLOBAL",302)GlobalGT("LAST_BATTLE","GLOBAL",302) ~THEN BEGIN san60
SAY~What a despicable display of enchanted weapons. Hm, it's almost as if someone gave them advice. Was it you, Najim?~[BPT3B202]
IF ~~THEN DO ~SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
CreateVisualEffect("spdimndr",[591.503])
PlaySound("EFF_M13")
Wait(4)
Activate("BPNAJIM")
ActionOverride("BPNAJIM",StartDialogNoSet(Player1))
~EXTERN BPNAJIM san13
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B3","GLOBAL",2)GlobalLT("LAST_BATTLE","GLOBAL",303)~THEN BEGIN san62
SAY ~Confound it! Once more, you have anticipated my surprise! How does this keep happening?~[BPT3B302]
IF ~~THEN DO ~GiveGoldForce(1200)
SetGlobal("T3_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",303)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B3","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",303) GlobalGT("LAST_BATTLE","GLOBAL",303)~THEN BEGIN san63
SAY ~Confound it! Once more, you have anticipated my surprise! How does this keep happening?~[BPT3B302]
  IF ~~THEN DO ~GiveGoldForce(600)
SetGlobal("T3_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B4","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",304) ~THEN BEGIN san65
SAY  ~Heh huh... it appears I have miscalculated once again. I grow tired of this game. Begone, <RACE>! You are beginning to bother me.~[BPT3B402]
  IF ~~THEN DO ~GiveGoldForce(1400)
SetGlobal("T3_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",304)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B4","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",304)GlobalGT("LAST_BATTLE","GLOBAL",304)~THEN BEGIN san66
SAY ~Heh huh... it appears I have miscalculated once again. I grow tired of this game. Begone, <RACE>! You are beginning to bother me.~[BPT3B402]
IF ~~THEN DO ~GiveGoldForce(700)
SetGlobal("T3_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

END

CHAIN
IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2)Global("T3_B1","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",301) ~THEN BPNajim SanN12
~I am afraid it is "rock crushes lizard," master.~[BPT3D103]
==BPBaelot~Oh, this is no fun! Your neck remains unscathed and your pantaloons are rapidly drying! What a waste of good slimes...~[BPT3B104] 
DO~GiveGoldForce(800)
SetGlobal("T3_B1","GLOBAL",-1)
SetGlobal("LAST_BATTLE","GLOBAL",301)
StartCutScene("CUTBP03")
~EXIT

