/// @description Insert description here
// You can write your code in this editor

if(beat_time_left > 0){
	beat_time_left-=1;
} else {
	beat_time_left = beat_timer;
	obj_player_beat.spawnNextBeat();
}

if(beat_time_left < beat_timer/2 +1 and reaction_time_left <= 0){
	reaction_time_left = reaction_timer;
	obj_player.can_move = true;
}

if(reaction_time_left > 0){
	reaction_time_left-=1;	
}





