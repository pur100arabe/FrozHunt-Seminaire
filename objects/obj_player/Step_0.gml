var moveX = 0;
var moveY = 0;
var walk_speed = 1;
var run_speed = 2;
var is_running = keyboard_check(vk_shift);

if (!attacking) {
    if (keyboard_check(vk_left) || keyboard_check(ord("Q"))) {
        moveX = is_running ? -run_speed : -walk_speed;
        if (player_state == "sword") {
            sprite_index = is_running ? s_Player_Run_Sword_left : s_Player_Walk_Sword_left;
        } else {
            sprite_index = is_running ? s_Player_run_left : s_Player_left;
        }
        player_direction = "left";
        image_speed = is_running ? 0.7 : 0.5;
    } 
    else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
        moveX = is_running ? run_speed : walk_speed;
        if (player_state == "sword") {
            sprite_index = is_running ? s_Player_Run_Sword_Right : s_Player_Walk_Sword_right;
        } else {
            sprite_index = is_running ? s_Player_run_right : s_Player_right;
        }
        player_direction = "right";
        image_speed = is_running ? 0.7 : 0.5;
    } 
    else if (keyboard_check(vk_up) || keyboard_check(ord("Z"))) {
	    moveY = is_running ? -run_speed : -walk_speed;

	    if (player_state == "sword") {
	        sprite_index = is_running ? s_Player_Run_Sword_back : s_Player_Walk_Sword_back;
	    } else {
			sprite_index = is_running ? s_Player_run_down : s_Player_down;
	    }

	    player_direction = "up";
	    image_speed = is_running ? 0.7 : 0.5;
    
	}

 
    else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
        moveY = is_running ? run_speed : walk_speed;
        if (player_state == "sword") {
            sprite_index = is_running ? s_Player_Run_Sword_Front : s_Player_Walk_Sword_front;
        } else {
            sprite_index = is_running ? s_Player_run_front : s_Player_front;
        }
        player_direction = "down";
        image_speed = is_running ? 0.7 : 0.5;
    }

    if (moveX == 0 && moveY == 0) {
        image_index = 0;
        image_speed = 0;
    }
}

if (player_state == "sword" && keyboard_check_pressed(ord("W")) && !attacking) {
    attacking = true;
    attack_timer = attack_duration;

    if (player_direction == "left") {
        sprite_index = s_Player_Attack_left;
    } else if (player_direction == "right") {
        sprite_index = s_Player_Attack_right;
    } else if (player_direction == "up") {
        sprite_index = s_Player_Attack_back;
    } else if (player_direction == "down") {
        sprite_index = s_Player_Attack_front;
    }
	//else {
	//	sprite_index = s_Player_right;
	//}

    image_index = 0;
    image_speed = 1;
}

if (attacking) {
    attack_timer -= 1;
    if (attack_timer <= 0) {
        attacking = false;
    }
}

if (!attacking) {
    x += moveX;
    y += moveY;
}