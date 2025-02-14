// Détecter si le joueur appuie sur une touche (déplacement ou attaque)
var player_moving = (
    keyboard_check(vk_left) || keyboard_check(ord("Q")) ||
    keyboard_check(vk_right) || keyboard_check(ord("D")) ||
    keyboard_check(vk_up) || keyboard_check(ord("Z")) ||
    keyboard_check(vk_down) || keyboard_check(ord("S")) ||
    keyboard_check_pressed(ord("W")) // Attaque
);

if (player_moving) {
    instance_destroy(); 
}


