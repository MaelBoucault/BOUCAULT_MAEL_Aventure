
var R = keyboard_check(ord("D"));
var L = keyboard_check(ord("Q"));
var U = keyboard_check(ord("Z"));
var D = keyboard_check(ord("S"));


x_direction = R - L;
y_direction = D - U;


if ( x_direction !=0) or ( y_direction!=0) {
	
	move_direction = point_direction(x, y, x + x_direction, y + y_direction);
	
	moveX = lengthdir_x(moveSPD, move_direction)
	moveY = lengthdir_y(moveSPD, move_direction)

	if (moveX != 0) or (moveY != 0){
		state = PLAYER_STATE.MOVE;
		x += moveX;
		y += moveY;
	}
	if (moveX >0){
	sprite_index = S_Right_Player;
	}else if (moveX < 0) sprite_index = S_Left_Player;

}else{
	sprite_index = S_Idle_Player;
	state = PLAYER_STATE.IDLE;
}


function setIdleState(){
	
	state = PLAYER_STATE.IDLE;
}
