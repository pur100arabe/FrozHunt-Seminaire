if (!audio_is_playing(completed_song)) {
    audio_stop_all();
    audio_play_sound(completed_song, 1, true); 
}
