/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(can_touch && obj_player.grid_pos_x == grid_pos_x && obj_player.grid_pos_y == grid_pos_y){
	if(obj_player.hp < obj_player.max_hp/2){
		obj_player.take_damage(-1);
	}
	obj_player.take_damage(-amt);
	audio_play_sound(Gimme_Snap1,1,false,.4);
	beat_controller.combo+=1;
	obj_cam.ShakeScreen(10,5);
	obj_cam.Zoom(5);
	instance_destroy();
}


