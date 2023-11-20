/// @description Insert description here
// You can write your code in this editor

x+=beat_controller.bar_speed;

if(place_meeting(x,y,obj_player_beat)){
	instance_destroy();	
	audio_play_sound(Gimme_Kick1,1,false,1);
}





