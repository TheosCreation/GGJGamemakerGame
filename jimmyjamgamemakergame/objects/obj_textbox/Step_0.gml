
if(charCount < 2) {
	alarm[0] = string_length(Dialog[page]) + 10;
	selectionSound = random_range(0, 3)
	show_debug_message(selectionSound)
	if(selectionSound <= 1) {
		audio_play_sound(snd_VoiceJoke,100,true);
	}else
	if(selectionSound > 1 && selectionSound <= 2) {
		audio_play_sound(snd_Voice,100,true);
	} else
	if(selectionSound > 2 && selectionSound <= 3) {
		audio_play_sound(snd_Voice2,100,true);
	}
}