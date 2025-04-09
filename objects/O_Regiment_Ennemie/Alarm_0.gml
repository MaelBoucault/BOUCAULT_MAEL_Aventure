


if ((state == STATE.IDLE) or (state == STATE.WALK)) and (state != STATE.ATTACK){
	
	var choice = choose(true,false);

	if (choice){
		state = STATE.WALK;
		walk_direction = irandom(359)*100;
	
	}else state = STATE.IDLE;

	alarm[0] = random_range(room_speed, room_speed *3);

}