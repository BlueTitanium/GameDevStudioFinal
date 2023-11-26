/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

dmg = 1;

can_touch = false;

//set_grid_pos(1,1);
//can_touch = true;
decay_moves_left = 4;
danger_zone = 1;

col_index = 0;
colors = [ #ff9429, #fff94a, #ff2929]
image_blend = colors[col_index];
image_alpha = .5;
function move(){
	if(can_move){
		decay_moves_left--;
	
		if(decay_moves_left <= danger_zone){
			col_index = 2;	
			can_touch = true;
			image_alpha = 1;
		} else {
			col_index = (col_index + 1) % 2;
			image_alpha = .5;
		}
		image_blend = colors[col_index];
		if(decay_moves_left <= 0){
			instance_destroy();
			if(!audio_is_playing(Gimme_Tom7)){
				audio_play_sound(Gimme_Tom7,1,false,.4);
			}
		}
	}
}