if (camera_get_active() != -1) {
    var cam = view_camera[0];

    if (cam != noone) {
        x = camera_get_view_x(cam) + camera_get_view_width(cam) - sprite_get_width(sprite_index) - 20;
        y = camera_get_view_y(cam) + camera_get_view_height(cam) - sprite_get_height(sprite_index) - 20;
    }
}

image_index = vie