/// @description Insert description here
// You can write your code in this editor

spacer = 20;

function spawnBeat(dist){
	
}

function spawnNextBeat(){
	var _left_pos = x - beat_controller.beat_timer * spacer;
	var _right_pos = x + beat_controller.beat_timer * spacer;
	
	instance_create_layer(_left_pos, y, "UI", obj_left_beat);
	instance_create_layer(_right_pos, y, "UI", obj_right_beat);

}