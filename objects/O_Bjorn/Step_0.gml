
var R = keyboard_check(vk_right);
var L = keyboard_check(vk_left);
var U = keyboard_check(vk_up);
var D = keyboard_check(vk_down);


x_direction = R - L;
y_direction = D - U;


if ( x_direction !=0) or ( y_direction!=0) {
	
	move_direction = point_direction(x, y, x + x_direction, y + y_direction);
	
	moveX = lengthdir_x(moveSPD, move_direction)
	moveY = lengthdir_y(moveSPD, move_direction)

	if (moveX != 0) or (moveY != 0){
		x += moveX;
		y += moveY;
	}
	if (moveX >0){
	sprite_index = S_Right_Player;
	}else if (moveX < 0) sprite_index = S_Left_Player;

}else sprite_index = S_Idle_Player;


