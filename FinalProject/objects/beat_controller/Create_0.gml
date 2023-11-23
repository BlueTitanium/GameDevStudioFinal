/// @description Insert description here
// You can write your code in this editor

game_set_speed(60, gamespeed_fps);


bpm = 120; //120 bpm
beat_spacer = 20;
beat_timer = 60/(bpm/60); //30 frames
delay = 0;
beat_time_left = beat_timer + delay;

num_correct = 0;
num_inputs = 0;
accuracy = 1;


cur_index = 0; // to spawn
cur_beat = " "; // to hit


reaction_timer = 17;
reaction_allowed=12;
reaction_time_left = 0;

bar_speed = 5;

audio_play_sound(music_test,1,true,.3);

function hit_beat(){
	num_correct++;
	num_inputs++;
	accuracy = num_correct/num_inputs;
}
function miss_beat(){
	
	num_inputs++;
	accuracy = num_correct/num_inputs;
}


