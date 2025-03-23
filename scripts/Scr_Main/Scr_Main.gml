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
	o.setIdleState();

}