/// @description Insert description here
// You can write your code in this editor

x = lerp(x,start_x + 32*grid_pos_x,.1);
y = lerp(y,start_y + 32*grid_pos_y,.1);

//pattern = 0 -> any, 1->up, 2->down, 3->left, 4->right, " " -> none

	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		if(can_move && (beat_controller.cur_beat == "0" || beat_controller.cur_beat == "1") 
		&& beat_controller.reaction_time_left>0){
			grid_pos_y -= 1;
			obj_player_beat.scale = 2.5;
			can_move = false;
			beat_controller.hit_beat();
		}  else {
			can_move = false;
			beat_controller.miss_beat();	
		}
	}
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		if(can_move && (beat_controller.cur_beat == "0" || beat_controller.cur_beat == "2") 
		&& beat_controller.reaction_time_left>0){
			grid_pos_y += 1;
			obj_player_beat.scale = 2.5;
			can_move = false;
			beat_controller.hit_beat();
		}  else {
			can_move = false;
			beat_controller.miss_beat();	
		}
	}
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
		if(can_move && (beat_controller.cur_beat == "0" || beat_controller.cur_beat == "3") 
		&& beat_controller.reaction_time_left>0){
			grid_pos_x -= 1;
			obj_player_beat.scale = 2.5;			
			can_move = false;
			beat_controller.hit_beat();
		} else {
			can_move = false;
			beat_controller.miss_beat();	
		}
	}
	if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
		if(can_move && (beat_controller.cur_beat == "0" || beat_controller.cur_beat == "4") 
		&& can_move && beat_controller.reaction_time_left>0){
			grid_pos_x += 1;
			obj_player_beat.scale = 2.5;
			can_move = false;
			beat_controller.hit_beat();
		} else {
			can_move = false;
			beat_controller.miss_beat();	
		}
	}



