/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x,y,obj_player)){
	global.checkpointX = x;
	global.checkpointY = y;
	instance_destroy();
}