/// @description Insert description here
// You can write your code in this editor

if(!audio_is_playing(global.room_song)){
	audio_play_sound(global.room_song,1,true,.3);
}

if(keyboard_check_pressed(vk_escape)){
	room_goto(START);	
}

//bounds should be -5, 5, 5 ,-5

x = lerp(x,start_x + 32*grid_pos_x,.1);
y = lerp(y,start_y + 32*grid_pos_y,.1);

//pattern = 0 -> any, 1->up, 2->down, 3->left, 4->right, " " -> none

if(can_move){
	///TRY MOVE
	if((keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
	&& CheckCanMove(0,-1)){
		grid_pos_y -= 1;
		scale = 2.5;
		audio_play_sound(Gimme_Kick1,1,false,.5);
	}
	if((keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
	&& CheckCanMove(0,1)){
		grid_pos_y += 1;
		scale = 2.5;
		audio_play_sound(Gimme_Kick1,1,false,.5);
	}
	if((keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")))
	&& CheckCanMove(-1,0)){
		grid_pos_x -= 1;
		scale = 2.5;
		audio_play_sound(Gimme_Kick1,1,false,.5);
	}
	if((keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")))
	&& CheckCanMove(1,0)){
		grid_pos_x += 1;
		scale = 2.5;
		audio_play_sound(Gimme_Kick1,1,false,.5);
	}	
}