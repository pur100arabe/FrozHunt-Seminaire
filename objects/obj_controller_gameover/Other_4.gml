if (!audio_is_playing(gameover_song)) { 
    audio_stop_all(); 
    audio_play_sound(gameover_song, 1, true);
}
