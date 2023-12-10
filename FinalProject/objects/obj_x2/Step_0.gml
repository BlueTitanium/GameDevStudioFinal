/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(can_touch && obj_player.grid_pos_x == grid_pos_x && obj_player.grid_pos_y == grid_pos_y){
	obj_enemy.spawn_enemy_attack("z");
	audio_play_sound(Gimme_Perc16,1,false,.4);
	beat_controller.combo+=2;
	obj_cam.ShakeScreen(10,15);
	obj_cam.Zoom(15);
	instance_destroy();
	
	var _tInst = instance_create_layer(obj_player.x, obj_player.y+32, "UI", obj_text_effect);
	_tInst.text = "ATTACK ZONES!";
	_tInst.target_alpha = 1;
	_tInst.col = #40ff86;
}


