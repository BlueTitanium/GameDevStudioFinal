/// @description Insert description here
// You can write your code in this editor

scale = 1;

//pattern = 0 -> any, 1->up, 2->down, 3->left, 4->right, " " -> none
enemy_pattern				
= global.enemy_pattern;
enemy_pattern_attacks		
= global.enemy_attack_pattern; 
player_pattern 
= "00000000";

len = string_length(enemy_pattern);


function spawnBeat(dist){
	
}

function spawnNextBeat(){
	if(obj_enemy.hp > 0 && obj_player.hp > 0){
		var next_beat_e = string_char_at(enemy_pattern,beat_controller.cur_index+1);
		var next_beat_a = string_char_at(enemy_pattern_attacks,beat_controller.cur_index+1);
		var next_beat_p = "0";//string_char_at(player_pattern,beat_controller.cur_index+1);
		beat_controller.cur_index++;
		if(beat_controller.cur_index>=len){
			beat_controller.cur_index = 0;	
		}
		var _left_pos = x - beat_controller.beat_timer * beat_controller.beat_spacer;
		var _right_pos = x + beat_controller.beat_timer * beat_controller.beat_spacer;
	
		var _l = instance_create_layer(_left_pos, y, "UI", obj_left_beat);
		_l.change_beat_type(next_beat_e);
		_l.attack = next_beat_a;
		var _r = instance_create_layer(_right_pos, y, "UI", obj_right_beat);
		_r.change_beat_type(next_beat_e);
	
		obj_player_beat.spawnNextBeat(next_beat_p);
	} else {
		if(obj_player.hp > 0){
			//show win screen
			
		} else {
			//show lose screen	
			
		}
	}
}