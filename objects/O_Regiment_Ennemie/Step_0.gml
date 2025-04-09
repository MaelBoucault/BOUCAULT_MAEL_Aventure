

							/// --- MOVE --- \\\

if (state == STATE.WALK){
	
	moveX = lengthdir_x(moveSPD, walk_direction);
	moveY = lengthdir_y(moveSPD, walk_direction);
	
	if (place_meeting(x + moveX, y, O_Collision) ) moveX = 0;
	if (place_meeting(x, y + moveY, O_Collision) ) moveY = 0;
	
	
	if (moveX == 0) and (moveY == 0){
		state = STATE.IDLE;
	
	}else{
		x += moveX;
		y += moveY;
	}
}

if(state = STATE.ATTACK){
	moveX = 0;
	moveY = 0;
}

								// --- COMBATSs!!§ -----\\

function deployTroupe(){
	for (var i = 0; i < array_length(Children); i++) {
		if (Children[i] != -1) and instance_exists(Children[i])
				Children[i].alarm[2] = 30;
	}
}

		// -----CHASE------\\
function chaseCharacter(){
	

		// Direction vers la cible
		chase_direction = point_direction(x, y, target.x, target.y);
    
		// Setup du mouvement
		moveX = lengthdir_x(chaseSPD, chase_direction);
		moveY = lengthdir_y(chaseSPD, chase_direction);
    

		if (place_meeting(x + moveX, y, O_Collision)) {
		    moveX = 0;
		}
		if (place_meeting(x, y + moveY, O_Collision)) {
		    moveY = 0;
		}

		if (deployRadius > distance_to_object(target)){
			
			if(target == O_Bjorn){
				deployTroupe()
			}
			
			else {
				for (var i = 0; i < array_length(Children); i++) {
					Children[i].state = STATE.ATTACK;
				}

				state = STATE.ATTACK;
				moveX = 0;
				moveY = 0;
				
			}
		}
	

		if ((moveX == 0) and (moveY == 0)) or (distance_to_object(target) > idleRadius) {
		    state = STATE.IDLE;
			alarm[0] = random_range(room_speed, room_speed *3);
			for (var i = 0; i < array_length(Children); i++) {
				if (Children[i] != -1) and instance_exists(Children[i]){
					Children[i].independent = false;
				}
			}

		} else{
		    x += moveX;
		    y += moveY;
		}
	
	
}

if (state == STATE.IDLE) or (state == STATE.WALK){
	
	if (distance_to_object(target) <= chaseRadius){
		state = STATE.CHASE;
	}
	
}


if (state == STATE.CHASE) {

	chaseCharacter();

}


if (troupeDead >=9) instance_destroy()