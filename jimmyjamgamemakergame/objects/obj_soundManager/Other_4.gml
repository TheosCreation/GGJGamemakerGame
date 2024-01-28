audio_stop_sound(snd_Wind);
audio_stop_sound(snd_ClownMusic);
if(room = Game) {
	audio_play_sound(snd_Wind,100,true)
	audio_stop_sound(snd_MainMenu)
}
if(room = MainMenu) {
	audio_play_sound(snd_MainMenu,100,true)
}