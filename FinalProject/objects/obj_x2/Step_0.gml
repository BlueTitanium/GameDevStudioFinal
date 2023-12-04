/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(can_touch && obj_player.grid_pos_x == grid_pos_x && obj_player.grid_pos_y == grid_pos_y){
	obj_enemy.take_damage(amt*beat_controller.combo*2);
	audio_play_sound(Gimme_Clap1,1,false,.4);
	beat_controller.combo+=3;
	obj_cam.ShakeScreen(10,15);
	obj_cam.Zoom(15);
	instance_destroy();
}


