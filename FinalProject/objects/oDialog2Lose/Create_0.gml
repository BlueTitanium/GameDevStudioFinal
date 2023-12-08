/// @description 

// Inherit the parent event
event_inherited();

//dialog.add(spr_player_portrait, "Hello");
dialog.add(spr_enemy_portrait3, "The Champion: ...");
dialog.add(spr_enemy_portrait3, "The Champion: Get some more practice and return when you're ready for another round!");
//dialog.add(spr_Character_Blue, "Today it has been snowing a lot hasn't it?");

show_dialogue();

function end_dialogue(){
	global.should_dia[dia_id][0] = false;
	global.should_dia[dia_id][1] = false;
}