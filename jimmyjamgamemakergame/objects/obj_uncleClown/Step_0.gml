/// @description Insert description here
// You can write your code in this editor



if(place_meeting(x,y,obj_player)){
	if(keyboard_check_pressed(ord("E"))){
		if(myTextbox == noone) {
			myTextbox = instance_create_layer(mouse_x,mouse_y,"ui",obj_textbox)
			myTextbox.Dialog = m_ClownText;
			myTextbox.ClownName = m_ClownName;
		}
	}
}
else {
	instance_destroy(myTextbox);
	myTextbox = noone;
}