var moveX = 0;
var moveY = 0;
var walk_speed = 1;
var run_speed = 2;
var is_running = keyboard_check(vk_shift);

if (player_state == "sword") {
    if (keyboard_check(vk_left) || keyboard_check(ord("Q"))) {
        moveX = is_running ? -run_speed : -walk_speed;
        sprite_index = is_running ? s_Player_Run_Sword_left : s_Player_Walk_Sword_left;
        image_speed = is_running ? 0.7 : 0.5;
    } 
    else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
        moveX = is_running ? run_speed : walk_speed;
        sprite_index = is_running ? s_Player_Run_Sword_Right : s_Player_Walk_Sword_right;
        image_speed = is_running ? 0.7 : 0.5;
    } 
    else if (keyboard_check(vk_up) || keyboard_check(ord("Z"))) {
        moveY = is_running ? -run_speed : -walk_speed;
        sprite_index = is_running ? s_Player_Run_Sword_back : s_Player_Walk_Sword_back;
        image_speed = is_running ? 0.7 : 0.5;
    } 
    else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
        moveY = is_running ? run_speed : walk_speed;
        sprite_index = is_running ? s_Player_Run_Sword_Front : s_Player_Walk_Sword_front;
        image_speed = is_running ? 0.7 : 0.5;
    } 
} 
else {
    if (keyboard_check(vk_left) || keyboard_check(ord("Q"))) {
        moveX = is_running ? -run_speed : -walk_speed;
        sprite_index = is_running ? s_Player_run_left : s_Player_left;
        image_speed = is_running ? 0.7 : 0.5;
    } 
    else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
        moveX = is_running ? run_speed : walk_speed;
        sprite_index = is_running ? s_Player_run_right : s_Player_right;
        image_speed = is_running ? 0.7 : 0.5;
    } 
    else if (keyboard_check(vk_up) || keyboard_check(ord("Z"))) {
        moveY = is_running ? -run_speed : -walk_speed;
        sprite_index = is_running ? s_Player_run_down : s_Player_down;
        image_speed = is_running ? 0.7 : 0.5;
    } 
    else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
        moveY = is_running ? run_speed : walk_speed;
        sprite_index = is_running ? s_Player_run_front : s_Player_front;
        image_speed = is_running ? 0.7 : 0.5;
    } 
}

if (moveX != 0 || moveY != 0) {
    if (!place_meeting(x + moveX, y, obj_collision)) {
        x += moveX;
    }
    if (!place_meeting(x, y + moveY, obj_collision)) {
        y += moveY;
    }
} else {
    image_index = 0;
    image_speed = 0;
}
