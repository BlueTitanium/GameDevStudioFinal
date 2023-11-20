/// @description Insert description here
// You can write your code in this editor

scale = 1;

//pattern = 0 -> any, 1->up, 2->down, 3->left, 4->right, " " -> none
enemy_pattern  = "01234 01200000000";
player_pattern = "01234 01200000000";

len = string_length(enemy_pattern);


function spawnBeat(dist){
	
}

function spawnNextBeat(){
	var next_beat_e = string_char_at(enemy_pattern,beat_controller.cur_index);
	var next_beat_p = string_char_at(player_pattern,beat_controller.cur_index);
	beat_controller.cur_index++;
	if(beat_controller.cur_index>=len){
		beat_controller.cur_index = 0;	
	}
	var _left_pos = x - beat_controller.beat_timer * beat_controller.beat_spacer;
	var _right_pos = x + beat_controller.beat_timer * beat_controller.beat_spacer;
	
	_l = instance_create_layer(_left_pos, y, "UI", obj_left_beat);
	_r = instance_create_layer(_right_pos, y, "UI", obj_right_beat);
	
	obj_player_beat.spawnNextBeat(next_beat_p);
}