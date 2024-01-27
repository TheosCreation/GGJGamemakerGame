show_debug_message(charCount)
if(charCount < 2) {
	alarm[0] = string_length(Dialog[page]);
	audio_play_sound(snd_VoiceJoke,100,true);
}