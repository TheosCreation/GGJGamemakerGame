/// @description Insert description here
// You can write your code in this editor



if(place_meeting(x,y,obj_player)){
	if(keyboard_check_pressed(ord("E"))){
		instance_create_layer(mouse_x,mouse_y,"ui",obj_textbox)
		show_debug_message("a");
	}
}