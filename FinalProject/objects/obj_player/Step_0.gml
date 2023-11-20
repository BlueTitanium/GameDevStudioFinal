/// @description Insert description here
// You can write your code in this editor

x = lerp(x,start_x + 32*grid_pos_x,.1);
y = lerp(y,start_y + 32*grid_pos_y,.1);


	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		if(beat_controller.reaction_time_left>0){
			grid_pos_y -= 1;
			obj_player_beat.scale = 2.5;
			can_move = false;
		}
	}
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		if(beat_controller.reaction_time_left>0){
			grid_pos_y += 1;
			obj_player_beat.scale = 2.5;
			can_move = false;
		}
	}
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
		if(beat_controller.reaction_time_left>0){
			grid_pos_x -= 1;
			obj_player_beat.scale = 2.5;			
			can_move = false;
		}
	}
	if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
		if(can_move && beat_controller.reaction_time_left>0){
			grid_pos_x += 1;
			obj_player_beat.scale = 2.5;
			can_move = false;
		}
	}



