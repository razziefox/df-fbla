//plays music while also stopping all audio currently playing
function play_music(file, loop) {

	//stops all audio
	audio_stop_all();
	
	//plays sound file in loop
	audio_play_sound(file, 0, loop);

}

//plays soundfx
function play_soundfx(file) {

	//plays sound file, but not in a loop
	audio_play_sound(file, 1, false);

}