if(music_already_playing = false){
	music_already_playing = true;
	switch(musicPlaying){
		case 0: default:
		case 1: audio_play_sound(snd_menu,1,true)
		case 2: audio_play_sound(snd_options,1,true)
		case 3: audio_play_sound(snd_space,1,true)
	}
}