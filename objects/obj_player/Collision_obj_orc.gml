if (keyboard_check_pressed(ord("W"))) {
    with (other) {
        alarm[0] = 30;
    }
}


touch_timer += 1;

if (touch_timer >= room_speed * 2) { 
    touch_timer = 0; 

    if (place_meeting(x, y, obj_orc)) {
        touch_count += 1;


        if (touch_count >= 6) {
            instance_destroy();
			room_goto(Gameover)
        }
    }
}
