/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)){
	room_goto(rm);	
}

if(!audio_is_playing(global.room_song)){
	room_restart();
}






