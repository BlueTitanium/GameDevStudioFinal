/// @description 

// Inherit the parent event
event_inherited();

//dialog.add(spr_player_portrait, "Hello");

dialog.add(spr_enemy_portrait2, "You're all set! Head out and challenge other dancers on the street");
dialog.add(spr_enemy_portrait2, "Honestly, I didn't expect to lose...");
dialog.add(spr_enemy_portrait2, "By the way, I've heard that the best dancer here is actually a pro dancer.");
//dialog.add(spr_Character_Blue, "Today it has been snowing a lot hasn't it?");

show_dialogue();

function end_dialogue(){
	global.should_dia[dia_id][0] = false;
	global.should_dia[dia_id][1] = false;
}