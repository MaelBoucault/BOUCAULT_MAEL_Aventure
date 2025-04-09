

function HitRepulse(Object) 
{
	var o = Object;
	// SETup MOve
	
	o.moveX = lengthdir_x(o.hitSPD, o.hitDirection);
	o.moveY = lengthdir_y(o.hitSPD, o.hitDirection);
	
	//Check Coll
	
	if (place_meeting(o.x + o.moveX, y, O_Collision) ) o.moveX = 0;
	if (place_meeting(o.x, o.y = o.moveY, O_Collision)) o.moveY = 00;
	
	// MAke Move
	
	o.x += moveX;
	o.y += moveY;
	
	// Decreùent hit Spd
	
	o.hitSPD -= .2;
	
	// Returne Idll
	o.state = STATE.IDLE;

}



function SetUpBattle(regiment1,regiment2){

	show_debug_message("SetUpBattle")
	var reg1 = regiment1;
	var reg2 = regiment2;
	
	if (array_length( reg1.Children) == array_length( reg2.Children)){
		for (var i = 0; i < array_length( reg1.Children); i++) {
			if (instance_exists(reg1.Children[i])){
				i.switchTarget(reg2.Children[i]);
			}
		}
		reg1.deployTroupe();
		reg2.deployTroupe();
	}
}


