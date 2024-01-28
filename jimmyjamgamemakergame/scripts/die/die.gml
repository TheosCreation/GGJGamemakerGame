// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function die(){
	audio_play_sound(snd_DeathSound, 100, false)
	obj_player.x = global.checkpointX;
	obj_player.y = global.checkpointY;
}