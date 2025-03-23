
if(state == REGIMENT_STATE.IDLE) or (state == REGIMENT_STATE.WALK){
	var choice = choose(true,false);

	if (choice){
		state = REGIMENT_STATE.WALK;
		walk_direction = irandom(359);
	
	}else state = REGIMENT_STATE.IDLE;

	alarm[0] = random_range(room_speed, room_speed *3);

}