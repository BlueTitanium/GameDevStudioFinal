/// @description Insert description here
// You can write your code in this editor

if(beat_time_left > 0){
	beat_time_left-=1;
} else {
	beat_time_left = beat_timer;
	//obj_player_beat.spawnNextBeat();
	if(cur_index < obj_enemy_beat.len){
		obj_enemy_beat.spawnNextBeat();
	}
}

if(beat_time_left < reaction_allowed and reaction_time_left <= 0){
	reaction_time_left = reaction_timer;
	obj_player.can_move = true;
}

if(reaction_time_left > 0){
	reaction_time_left-=1;	
} else {
	if(obj_player.can_move == true && (cur_beat != " " && cur_beat != "0")){
		show_debug_message(string(cur_beat));
		miss_beat();		
	}
	cur_beat = " ";	
}




