/*
if (room == GameOver && !audio_is_playing(game_over_sound)) {
    audio_play_sound(game_over_sound, 10, 1);
} else if (room != GameOver && audio_is_playing(game_over_sound)) {
    audio_stop_sound(game_over_sound);
}
*/

audio_stop_all();
audio_play_sound(game_over_sound, 10, false);