/// @description Insert description here
// You can write your code in this editor



if(place_meeting(x,y,obj_player)){
	if(keyboard_check_pressed(ord("E"))) {
	if(instance_exists(obj_textbox)) {
		if(obj_textbox.charCount < string_length(obj_textbox.Dialog[obj_textbox.page])) {
			obj_textbox.charCount = string_length(obj_textbox.Dialog[obj_textbox.page]);
		}
		else if(obj_textbox.page+1 < array_length(obj_textbox.Dialog)) {
			obj_textbox.page += 1;
			obj_textbox.charCount = 0;
		} else {
			instance_destroy(obj_textbox);
				global.GamePause = false;
		}
	}
}
	if(keyboard_check_pressed(ord("E"))){
		
		if(myTextbox == noone) {
			global.GamePause = true;
			myTextbox = instance_create_layer(mouse_x,mouse_y,"ui",obj_textbox)
			myTextbox.Dialog = m_ClownText;
			myTextbox.ClownName = m_ClownName;
		}
	}
}
else {
	global.GamePause = false;
	instance_destroy(myTextbox);
	myTextbox = noone;
}