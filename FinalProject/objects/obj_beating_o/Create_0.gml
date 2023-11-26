/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();


start_x = obj_player.start_x;
start_y = obj_player.start_y;
offset_y = 16;
grid_pos_x = 0;
grid_pos_y = 0;

var ind = ds_list_find_index(beat_controller.beating_o_list, noone);
if(ind == -1){
	ds_list_add(beat_controller.beating_o_list, id);
} else {
	ds_list_replace(beat_controller.beating_o_list, ind, id);	
}
can_move = false;

function set_grid_pos(_x, _y){
	grid_pos_x = _x;
	grid_pos_y = _y;
	x = start_x + 32*grid_pos_x;
	y = start_y + 32*grid_pos_y + offset_y;
	if(grid_pos_x >= 5 || grid_pos_x <= -5 || grid_pos_y >= 5 || grid_pos_y <= -5){
		visible = false;
	}
}

function move(){
	
}