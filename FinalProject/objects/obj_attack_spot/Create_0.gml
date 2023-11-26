/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

dmg = 1;

can_touch = false;


//set_grid_pos(1,1);
//can_touch = true;
decay_moves_left = 2;

col_index = 0;
colors = [ #40ff86, #1fff44]
image_blend = colors[col_index];

function move(){
	if(can_move){
		decay_moves_left--;
		col_index = (col_index + 1) % array_length(colors);
		image_blend = colors[col_index];
		if(decay_moves_left <= 0){
			instance_destroy();	
			audio_play_sound(Gimme_Kick13,1,false,.4);
		}
	}
}