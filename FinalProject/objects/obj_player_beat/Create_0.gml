/// @description Insert description here
// You can write your code in this editor

x = room_width/2;
show_debug_message(string(x));
scale = 1;
function spawnBeat(dist){
	
}

function spawnNextBeat(type = " "){
	var _left_pos = x - beat_controller.beat_timer * beat_controller.beat_spacer;
	var _right_pos = x + beat_controller.beat_timer * beat_controller.beat_spacer;
	
	var _l = instance_create_layer(_left_pos, y, "UI", obj_left_beat);
	_l.is_player = true;
	_l.change_beat_type(type);
	var _r = instance_create_layer(_right_pos, y, "UI", obj_right_beat);
	_r.is_player = true;
	_r.change_beat_type(type);
}