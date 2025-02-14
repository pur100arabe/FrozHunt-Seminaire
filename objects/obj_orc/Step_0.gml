if (alarm[0] > 1) {
    image_alpha -= 0.033; // Réduit progressivement la transparence (0.033 * 30 ≈ 1)
}

// Variables de base
var follow_distance = 90;
var speed_orc = 0.8;

if (!variable_global_exists("global.freeze_cooldown")) {
    global.freeze_cooldown = 0; // Initialise le cooldown de l'effet de figement
}

if (!variable_global_exists("global.player_idle_timer")) {
    global.player_idle_timer = 0; // Initialise le timer du figement
}

var player_moving = (
    keyboard_check(vk_left) || keyboard_check(ord("Q")) ||
    keyboard_check(vk_right) || keyboard_check(ord("D")) ||
    keyboard_check(vk_up) || keyboard_check(ord("Z")) ||
    keyboard_check(vk_down) || keyboard_check(ord("S")) ||
    keyboard_check_pressed(ord("W"))
);

if (!player_moving) {
    speed = 0;
    exit;
}

if (instance_exists(obj_player)) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    if (dist < follow_distance) {
        move_towards_point(obj_player.x, obj_player.y, speed_orc);
    } else {
        speed = 0;
    }

    if (place_meeting(x, y, obj_player) && !is_attacking) {
        is_attacking = true;
        attack_timer = room_speed * 2.3;

        if (instance_exists(obj_barre_sante)) {
            if (obj_barre_sante.vie < 5) {
                obj_barre_sante.vie += 1;
            }
        }
    }
}

if (is_attacking) {
    attack_timer--;

    if (attack_timer <= 0) {
        is_attacking = false;
    }
}