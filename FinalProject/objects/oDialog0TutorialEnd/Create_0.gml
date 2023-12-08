/// @description 

// Inherit the parent event
event_inherited();

//dialog.add(spr_player_portrait, "Hello");
dialog.add(spr_enemy_portrait, "Enemy Sunglasser: Good job! You know how to dance now, but there are things I haven't covered yet.");
dialog.add(spr_enemy_portrait, "Enemy Sunglasser: Go talk to the girl at the end of the hallway for if you want to learn how to truly dance battle.");
//dialog.add(spr_Character_Blue, "Today it has been snowing a lot hasn't it?");

show_dialogue();

function end_dialogue(){
	global.should_dia[dia_id][0] = false;
	global.should_dia[dia_id][1] = false;
}