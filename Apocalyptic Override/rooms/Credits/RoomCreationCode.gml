//audio_stop_all();

//audio_play_sound(background_music, 10, 1);

if (room == Credits && !audio_is_playing(background_music)) {
    audio_play_sound(background_music, 10, 1)
} else if (room == Credits && audio_is_playing(background_music)) {
    //audio_stop_sound(game_over_sound);
} else{
	audio_stop_all();
}