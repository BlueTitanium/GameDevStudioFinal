/// @description 

// Inherit the parent event
event_inherited();

//dialog.add(spr_player_portrait, "Hello");
dialog.add(spr_enemy_portrait, "Huh? You want to challenge me to a dance battle?");
dialog.add(spr_enemy_portrait, "Haha! You don't even seem to know the rules to the dance floor yet!");
dialog.add(spr_enemy_portrait, "Let me teach you!");
dialog.add(spr_enemy_portrait, "You can either use WASD or arrows to make each move.");
dialog.add(spr_enemy_portrait, "Approach the green circle to launch an attack.");
dialog.add(spr_enemy_portrait, "But remember to move on the beat! The movement window is when you see the beat indicators at the bottom of your screen reach the center, and turn blue.");
//dialog.add(spr_Character_Blue, "Today it has been snowing a lot hasn't it?");


function end_dialogue(){
	StartBattle(0);
	global.should_dia[dia_id][0] = false;
	global.should_dia[dia_id][1] = true;
	global.next_grid_pos = [obj_player_world.grid_pos_x,obj_player_world.grid_pos_y];
	room_goto(Room1);
}