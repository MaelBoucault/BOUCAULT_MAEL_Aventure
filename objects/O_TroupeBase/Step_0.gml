

			/// MOVE \\\
if (self.parent != undefined) {
    // Synchronise la position de la troupe avec celle du spawner
    x = self.parent.x + initial_offset_x; // On ajoute ici l'offset aléatoire si nécessaire
    y = self.parent.y + initial_offset_y;
}

			/// ANIM \\\
if (abs(parent.moveX) > abs(parent.moveY)) {
    if (parent.moveX > 0) {
        sprite_index = Right;
    } else if (parent.moveX < 0) {
        sprite_index = Left;
    }
} else if (abs(parent.moveY) > abs(parent.moveX)) {
    if (parent.moveY > 0) {
        sprite_index = Face;
    } else if (parent.moveY < 0) {
        sprite_index = Back;
    }
} else if (parent.state == REGIMENT_STATE.IDLE) {
    sprite_index = Face;
} else {
    //diagonales
    if (parent.moveX > 0 && parent.moveY > 0) {
        sprite_index = (abs(parent.moveX) > abs(parent.moveY)) ? Right : Face;
    } else if (parent.moveX < 0 && parent.moveY > 0) {
        sprite_index = (abs(parent.moveX) > abs(parent.moveY)) ? Left : Face;
    } else if (parent.moveX > 0 && parent.moveY < 0) {
        sprite_index = (abs(parent.moveX) > abs(parent.moveY)) ? Right : Back;
    } else if (parent.moveX < 0 && parent.moveY < 0) {
        sprite_index = (abs(parent.moveX) > abs(parent.moveY)) ? Left : Back;
    }
}



					// ---- COMBATS ----- \\
	
if (state !=TROUPE_STATE.HIT) and (place_meeting(x, y, O_Bjorn)){
	
	if (O_Bjorn.state != PLAYER_STATE.HIT) {
		var _x = x;
		var _y = y;
		// HIT Bjorn
		with (O_Bjorn){
			state = PLAYER_STATE.HIT;
			hitSPD = 10;
			hitDirection = point_direction(_x, _y, x, y);
			HitRepulse(O_Bjorn);
		}
		// HIT Self
		state = TROUPE_STATE.HIT;
		hitSPD = 10;
		hitDirection = point_direction(O_Bjorn.x, O_Bjorn.y, x, y);
		HitRepulse(self);
		
	}
	
}

// HIT RESULT \\




function setIdleState(){
	
	state = TROUPE_STATE.IDLE;
}

function chase(Target){
    // Direction vers la cible
    parent.chase_direction = point_direction(parent.x, parent.y, Target.x, Target.y);
    
    // Setup du mouvement
    moveX = lengthdir_x(parent.chaseSPD, parent.chase_direction);
    moveY = lengthdir_y(parent.chaseSPD, parent.chase_direction);
    
    // Gestion des collisions
    if (place_meeting(parent.x + moveX, parent.y, O_Collision)) {
        moveX = 0;  // Si collision, ne pas bouger sur X
    }
    if (place_meeting(parent.x, parent.y + moveY, O_Collision)) {
        moveY = 0;  // Si collision, ne pas bouger sur Y
    }
    
    // Déplacement de l'objet
    if ((moveX == 0) and (moveY == 0)) or (distance_to_object(Target) > parent.idleRadius) {
        parent.state = REGIMENT_STATE.IDLE;  // Retour à l'état idle si aucun mouvement
    } else {
        // Affichage du déplacement pour débogage
        show_debug_message("moveX: " + string(moveX) + ", moveY: " + string(moveY));
        
        x += moveX;  // Déplacer l'objet parent
        y += moveY;  // Déplacer l'objet parent
    }
}