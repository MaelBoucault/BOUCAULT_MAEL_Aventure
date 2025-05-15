
var R = keyboard_check(ord("D"));
var L = keyboard_check(ord("Q"));
var U = keyboard_check(ord("Z"));
var D = keyboard_check(ord("S"));

var inputAction = mouse_check_button_pressed(1)

x_direction = R - L;
y_direction = D - U;



if ( x_direction !=0) or ( y_direction!=0) {
	
	move_direction = point_direction(x, y, x + x_direction, y + y_direction);
	
	moveX = lengthdir_x(moveSPD, move_direction)
	moveY = lengthdir_y(moveSPD, move_direction)

	if (moveX != 0) or (moveY != 0){
		state = STATE.WALK;
		x += moveX;
		y += moveY;
	}
	if (moveX >0){
		sprite_index = S_Right_Player;
	}else if (moveX < 0) {
		sprite_index = S_Left_Player
	}
	if (moveY > 0){
		sprite_index = S_Right_Player;
	}else if (moveY < 0) {
		sprite_index = S_Left_Player
	}

}else{
	sprite_index = S_Idle_Player;
	state = STATE.IDLE;
}


function setIdleState(){
	
	state = STATE.IDLE;
}
			// --- INPUT ACTION --- \\

if ( inputAction){
	
	if (state == STATE.IDLE) or (state == STATE.WALK){
		state = STATE.ATTACK;
		
		alarm[0] = room_speed /10;
		
		axe = instance_create_depth(x, y, depth +1, O_Axe);
		if (R) axe.image_index = 3;
		if (L) axe.image_index = 2;
		if (U) axe.image_index = 1;
		if (D) axe.image_index = 0;
		
	}
}

function TakeDamage(Amount) {
	if (!invincible){
		hp += Amount;
		if (hp > hpMax){
			hp = hpMax;
		}
	}
	invincible = true;
	alarm[2] = 60;
    if (hp <= 0) {
        room_restart();
    }
}

show_debug_message(hpMax);