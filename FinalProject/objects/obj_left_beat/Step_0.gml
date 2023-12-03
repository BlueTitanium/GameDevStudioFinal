/// @description Insert description here
// You can write your code in this editor
if(!beat_controller.finished){
	x+=beat_controller.bar_speed;

	if(is_player and obj_player_beat.x - x < beat_controller.bar_speed*beat_controller.reaction_allowed){
		image_blend = #00FFFF;
		beat_controller.cur_beat = beat;
	}

	if(obj_player_beat.x - x < beat_controller.bar_speed){
	
		if(is_player){
			if(sprite_index != noone){
				audio_play_sound(Gimme_Kick1,1,false,1);
				beat_controller.background_beat_color();	
			}
		}
		else {
			//move the enemy based on the beat
			show_debug_message(string(beat));
			beat_controller.move_others(beat);
			if(attack != "0"){
				obj_enemy.spawn_enemy_attack(attack);	
			}
		}
		instance_destroy();	
	}
}



