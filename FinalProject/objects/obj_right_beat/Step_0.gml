/// @description Insert description here
// You can write your code in this editor

x-=beat_controller.bar_speed;

if(is_player and -obj_player_beat.x + x < beat_controller.bar_speed*beat_controller.reaction_allowed){
	image_blend = #00FFFF;	
}


if(-obj_player_beat.x + x < beat_controller.bar_speed){
	instance_destroy();
}



