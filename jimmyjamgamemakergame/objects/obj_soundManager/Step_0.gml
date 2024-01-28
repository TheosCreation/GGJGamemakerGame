if(keyboard_check_pressed(ord("E"))){
	var sndID = irandom_range(0,6);
	audio_play_sound(m_laughs[sndID],10,false);
}