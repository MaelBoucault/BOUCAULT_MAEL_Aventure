


if (state == REGIMENT_STATE.WALK){
	
	moveX = lengthdir_x(moveSPD, walk_direction);
	moveY = lengthdir_y(moveSPD, walk_direction);
	
	if (place_meeting(x + moveX, y, O_Collision) ) moveX = 0;
	if (place_meeting(x, y + moveY, O_Collision) ) moveY = 0;
	
	
	if (moveX == 0) and (moveY == 0){
		state = REGIMENT_STATE.IDLE;
	}else{
		x += moveX;
		y += moveY;
	}
}


								// --- COMBATSs!!§ -----\\

// -----CHASE------\\

if (state == REGIMENT_STATE.IDLE) or (state == REGIMENT_STATE.WALK){
	
	if (distance_to_object(O_Bjorn) <= chaseRadius){
		state = REGIMENT_STATE.CHASE;
	}
}

if (state == REGIMENT_STATE.CHASE){
	
	for (var i = 0; i < array_length(Children); i++) {
		
		Children[i].chase(O_Bjorn);
		
	}
	
}
	



