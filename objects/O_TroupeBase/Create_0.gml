Face = S_TroupeFace;
Back = S_TroupeBack;
Right = S_TroupeRight;
Left = S_TroupeLeft;
Att = S_TroupeRigthAttack;

initial_offset_x = 0;
initial_offset_y = 0;

target = O_TroupeEnnemi;

image_xscale = .1;
image_yscale = .1;

image_speed = random(0.2) + 0.4;

state = STATE.IDLE;
anim = false;

independent = false;

Team = TEAM.TEAM1;
amountRegiment = 0;
hp = 20;
moveX = 0;
moveY = 0;
hitSPD = 0;
hitDirection = 0;

idleRadius = 50;
chase_direction = 0;
chaseSPD = .8;

hitAlpha = 0;
