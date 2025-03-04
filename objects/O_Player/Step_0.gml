var QDown = keyboard_check(ord("Q"));
	var DDown = keyboard_check(ord("D"));
	var ZDown = keyboard_check(ord("Z"));
	var SDown = keyboard_check(ord("S"));
	//Speeding process
	if(QDown) {
		if(hspeed > -walkSpeed) {
			hspeed -= 0.05;
		}
	}
	if(DDown) {
		if(hspeed < walkSpeed) {
			hspeed += 0.05;
		}
	}
	if(ZDown) {
		if(vspeed > -walkSpeed) {
			vspeed -= 0.05;
		}
	}
	if(SDown) {
		if(vspeed < walkSpeed) {
			vspeed += 0.05;
		}
	}
if(!QDown && !DDown && !ZDown && !SDown) {
		if(speed > 0) {
			speed -= 0.01;
		}
	}