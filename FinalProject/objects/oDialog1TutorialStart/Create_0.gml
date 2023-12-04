/// @description 

// Inherit the parent event
event_inherited();

//dialog.add(spr_player_portrait, "Hello");
dialog.add(spr_enemy_portrait2, "What do you want from me kid?");
dialog.add(spr_enemy_portrait2, "You want to learn how to do an actual dance battle?");
dialog.add(spr_enemy_portrait2, "Challenge accepted! Battle me, and I'll spill the details on the way");
dialog.add(spr_enemy_portrait2, "Watch out for the red circle beneath you - it deals damage to your HP, so make sure to steer clear!");
dialog.add(spr_enemy_portrait2, "Seek out the green plus sign to replenish your health and heal.");
dialog.add(spr_enemy_portrait2, "Maintain your rhythm for a higher combo! The stronger your combo, the more potent your attacks become.");
dialog.add(spr_enemy_portrait2, "Now, let's battle!");
//dialog.add(spr_Character_Blue, "Today it has been snowing a lot hasn't it?");


function end_dialogue(){
	StartBattle(1);
	global.should_dia[dia_id][0] = false;
	global.should_dia[dia_id][1] = true;
	global.next_grid_pos = [obj_player_world.grid_pos_x-1,obj_player_world.grid_pos_y];
	room_goto(Room1);
}