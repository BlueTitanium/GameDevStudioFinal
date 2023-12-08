/// @description 

// Inherit the parent event
event_inherited();

//dialog.add(spr_player_portrait, "Hello");
dialog.add(spr_enemy_portrait2, "Enemy Headphoner: What do you want from me kid?");
dialog.add(spr_enemy_portrait2, "Enemy Headphoner: You want to learn how to do an actual dance battle?");
dialog.add(spr_enemy_portrait2, "Enemy Headphoner: Challenge accepted! Battle me, and I'll spill the details on the way");
dialog.add(spr_enemy_portrait2, "Enemy Headphoner: Watch out for the red circle beneath you - it deals damage to your HP, so make sure to steer clear!");
dialog.add(spr_enemy_portrait2, "Enemy Headphoner: Seek out the green plus sign to replenish your health and heal.");
dialog.add(spr_enemy_portrait2, "Enemy Headphoner: Maintain your rhythm for a higher combo! The stronger your combo, the more potent your attacks become.");
dialog.add(spr_enemy_portrait2, "Enemy Headphoner: Now, let's battle!");
//dialog.add(spr_Character_Blue, "Today it has been snowing a lot hasn't it?");


function end_dialogue(){
	StartBattle(1);
	global.should_dia[dia_id][0] = false;
	global.should_dia[dia_id][1] = true;
	global.next_grid_pos = [obj_player_world.grid_pos_x,obj_player_world.grid_pos_y];
	room_goto(Room1);
}