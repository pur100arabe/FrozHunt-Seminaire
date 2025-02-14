if (!audio_is_playing(menu_song)) { 
    audio_stop_all(); 
    audio_play_sound(menu_song, 1, true);
}
