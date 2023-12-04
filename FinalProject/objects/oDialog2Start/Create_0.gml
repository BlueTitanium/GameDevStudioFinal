/// @description 

// Inherit the parent event
event_inherited();

//dialog.add(spr_player_portrait, "Hello");
dialog.add(spr_enemy_portrait3, "Wait, are you saying you aim to be the top dancer here?");
dialog.add(spr_enemy_portrait3, "Well then, you'll have to defeat me on the dance floor before claiming the title!");
//dialog.add(spr_Character_Blue, "Today it has been snowing a lot hasn't it?");


function end_dialogue(){
	StartBattle(2);
	global.should_dia[dia_id][0] = false;
	global.should_dia[dia_id][1] = true;
	global.loseable = true;
	global.next_grid_pos = [obj_player_world.grid_pos_x,obj_player_world.grid_pos_y];
	room_goto(Room1);
}