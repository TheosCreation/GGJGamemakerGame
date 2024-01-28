/// @description Insert description here
// You can write your code in this editor
if(m_win){
	global.Baloon = true;
	//m_win = false;
}

if(place_meeting(x,y,obj_player)){
	if(keyboard_check_pressed(ord("E"))) {
		if(sound_playing == false){
			audio_play_sound(snd_ClownTheme2, 100, true)
			sound_playing = true
			alarm[0] = 1000;
		}
		if(myTextbox == noone && m_gameStage == 0) {
			global.GamePause = true;
			myTextbox = instance_create_layer(mouse_x,mouse_y,"ui",obj_textbox)
			myTextbox.Dialog = m_ClownText;
			myTextbox.ClownName = m_ClownName;
		}else
	if(instance_exists(obj_textbox)) {
		if(obj_textbox.charCount < string_length(obj_textbox.Dialog[obj_textbox.page])) {
			obj_textbox.charCount = string_length(obj_textbox.Dialog[obj_textbox.page]);
			audio_stop_sound(snd_VoiceJoke);
			audio_stop_sound(snd_Voice);
			audio_stop_sound(snd_Voice2);
		}
		else if(obj_textbox.page+1 < array_length(obj_textbox.Dialog)) {
			obj_textbox.page += 1;
			obj_textbox.charCount = 0;
		} else {
			instance_destroy(obj_textbox);
			global.GamePause = false;
			myTextbox = noone;
			m_gameStage ++;
			if(m_gameStage == 1){
				myMiniGame = instance_create_layer(x+640,y,"Objects",obj_LaughterHandler);
				myMiniGame.m_parent = id;
			}
			else if(m_gameStage ==2){
				global.GamePause = true;
				myTextbox = instance_create_layer(mouse_x,mouse_y,"ui",obj_textbox)
				myTextbox.Dialog = m_ClownText;
				myTextbox.ClownName = m_ClownName;
				if(obj_textbox.charCount < string_length(obj_textbox.Dialog[obj_textbox.page])) {
					obj_textbox.charCount = string_length(obj_textbox.Dialog[obj_textbox.page]);
					audio_stop_sound(snd_VoiceJoke);
					audio_stop_sound(snd_Voice);
					audio_stop_sound(snd_Voice2);
				}
			else if(obj_textbox.page+1 < array_length(obj_textbox.Dialog)) {
				obj_textbox.page += 1;
				obj_textbox.charCount = 0;
			} else {
				instance_destroy(obj_textbox);
				global.GamePause = false;
				myTextbox = noone;
				m_gameStage ++;
			}
		}
		}
	}
}
}