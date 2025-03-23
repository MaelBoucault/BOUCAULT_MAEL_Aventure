Face = S_TroupeFace;
Back = S_TroupeBack;
Right = S_TroupeRight;
Left = S_TroupeLeft;
Att = S_TroupeRigthAttack;

initial_offset_x = 0;
initial_offset_y = 0;

image_xscale = .1;
image_yscale = .1;

image_speed = random(0.2) + 0.4;

state = TROUPE_STATE.IDLE;
anim = false;

					// COMBATS\\
moveX = 0;
moveY = 0;

hitSPD = 0;
hitDirection = 0;	