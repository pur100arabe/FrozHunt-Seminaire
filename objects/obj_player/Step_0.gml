// Variables de déplacement
var moveX = 0;
var moveY = 0;
var move_speed = 1; // Vitesse de déplacement

// Vérifier l'entrée du joueur
if (keyboard_check(vk_left)) {
    moveX = -move_speed;
    sprite_index = s_Player_left;
    image_speed = 0.5; // Accélère l'animation
} 
else if (keyboard_check(vk_right)) {
    moveX = move_speed;
    sprite_index = s_Player_right;
    image_speed = 0.5;
} 
else if (keyboard_check(vk_up)) {
    moveY = -move_speed;
    sprite_index = s_Player_down;
    image_speed = 0.5;
} 
else if (keyboard_check(vk_down)) {
    moveY = move_speed;
    sprite_index = s_Player_front;
    image_speed = 0.5;
} 
else {
    image_index = 0;  // Revient à la première frame (immobile)
    image_speed = 0;  // Stoppe l'animation
}

// Appliquer le mouvement
x += moveX;
y += moveY;
