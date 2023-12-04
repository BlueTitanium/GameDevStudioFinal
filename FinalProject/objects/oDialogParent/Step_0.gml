/// @description 

if(!started_dialog && place_meeting(x,y,obj_player_world)){
	started_dialog = true;
	show_dialogue();
}

if(showing_dialog) {
	if(keyboard_check_pressed(key_next)) {
		audio_play_sound(Gimme_Kick13,1,false,.4);
		showing_dialog = false;
		alpha = 0;
		
		if(dialog.count() <= 0) {
			instance_destroy();
			obj_player_world.can_move = true;
			end_dialogue();
			return;
		}
	
		current_dialog = dialog.pop();
		showing_dialog = true;
	}
}