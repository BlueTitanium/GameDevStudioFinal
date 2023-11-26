/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(can_touch && obj_player.grid_pos_x == grid_pos_x && obj_player.grid_pos_y == grid_pos_y){
	obj_enemy.take_damage(dmg*beat_controller.combo);
	audio_play_sound(Gimme_Clap1,1,false,.4);
	beat_controller.combo+=1;
	obj_cam.ShakeScreen(10,10);
	obj_cam.Zoom(10);
	instance_destroy();
}


