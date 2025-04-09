/// MOVE
if (self.parent != undefined && independent != true) {
    x = lerp(x, self.parent.x + initial_offset_x, 0.025);
    y = lerp(y, self.parent.y + initial_offset_y, 0.025);
}

/// ANIM
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
} else if (parent.state == STATE.IDLE) {
    sprite_index = Face;
} else {
    // Diagonales
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

if (state == STATE.ATTACK) sprite_index = Att;

/// COMBATS
function switchTarget(Target){
    target = Target;
}

function chase() {
    independent = true;

    if (target != undefined && instance_exists(target)) {
        chase_direction = point_direction(x, y, target.x, target.y);
    }
    
    // Setup du mouvement
    moveX = lengthdir_x(chaseSPD, chase_direction);
    moveY = lengthdir_y(chaseSPD, chase_direction);
    
    // Gestion des collisions
    if (place_meeting(parent.x + moveX, parent.y, O_Collision)) {
        moveX = 0;
    }
    
    if (place_meeting(parent.x, parent.y + moveY, O_Collision)) {
        moveY = 0;
    }
    
    if ((moveX == 0) and (moveY == 0)) or (distance_to_object(target) > self.parent.deployRadius) {
        state = STATE.IDLE;
        independent = false;
    } else {
        x += moveX;
        y += moveY;
    }
    if (moveX == 0 && moveY == 0) {
        independent = false;
    }
}

if (target != undefined) {
    if (state != STATE.HIT && place_meeting(x, y, target)) {
        if (target.state != STATE.HIT) {
            target.state = STATE.HIT;
            target.hitSPD = 100;
            target.hitDirection = point_direction(x, y, target.x, target.y);
            target.hitAlpha = 1;
            HitRepulse(target);
        }
    }
}

// HIT RESULT
if (instance_exists(O_Axe)) {
    if (state != STATE.HIT && place_meeting(x, y, O_Axe)) {
        if (Team == TEAM.TEAM2) {
            TakeDammege(-20);
            state = STATE.HIT;
            hitSPD = 50;
            hitDirection = point_direction(O_Bjorn.x, O_Bjorn.y, x, y);
            HitRepulse(self);
        }
    }
}

function setIdleState() {
    state = STATE.IDLE;
}

function TakeDammege(Amount) {
    hp += Amount;
    if (hp <= 0) {
        alarm[0] = 5;
    }
}
