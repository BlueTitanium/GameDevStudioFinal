// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetGridPos(gridX,gridY){
	var _x = start_x + 32*(grid_pos_x+gridX);
	var _y = start_y + 32*(grid_pos_y+gridY);
	return [_x,_y];
}

function CheckCanMove(gridX,gridY){
	var _pos = GetGridPos(gridX,gridY);
	var _inst = instance_position(_pos[0],_pos[1],oInteractible);
	if(_inst!=noone && _inst.dialogue_obj != noone){
		_inst.dialogue_obj.show_dialogue();
	}
	return !(position_meeting(_pos[0],_pos[1],obj_dont_move))
}