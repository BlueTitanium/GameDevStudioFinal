/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if( obj_player.grid_pos_x == grid_pos_x && obj_player.grid_pos_y == grid_pos_y){
	if(can_touch){
		obj_player.take_damage(dmg);
		beat_controller.combo=1;
		audio_play_sound(Gimme_Tom7,1,false,1,0,1.6);
		instance_destroy();
		obj_cam.ShakeScreen(20,10);
	} else {
		obj_cam.Danger();
	}
}


