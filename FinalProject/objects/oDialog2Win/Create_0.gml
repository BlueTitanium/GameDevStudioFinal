/// @description 

// Inherit the parent event
event_inherited();

//dialog.add(spr_player_portrait, "Hello");

dialog.add(spr_enemy_portrait3, "Congrats!");
dialog.add(spr_enemy_portrait3, "End of game so far! Thanks for playing");
//dialog.add(spr_Character_Blue, "Today it has been snowing a lot hasn't it?");

show_dialogue();

function end_dialogue(){
	global.should_dia[dia_id][0] = false;
	global.should_dia[dia_id][1] = false;
}