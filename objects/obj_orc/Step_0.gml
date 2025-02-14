if (alarm[0] > 0) {
    image_alpha -= 0.033; // Réduit progressivement la transparence (0.033 * 30 ≈ 1)
}


var follow_distance = 90; 

var speed_orc = 0.8; 

if (instance_exists(obj_player)) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    if (dist < follow_distance) {
        move_towards_point(obj_player.x, obj_player.y, speed_orc);
    } else {
        speed = 0;
    }
}
