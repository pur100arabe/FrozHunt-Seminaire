if (!audio_is_playing(walk_song)) { 
    audio_stop_all(); 
    audio_play_sound(walk_song, 1, true);
}
