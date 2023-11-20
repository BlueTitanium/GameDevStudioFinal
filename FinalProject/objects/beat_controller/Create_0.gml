/// @description Insert description here
// You can write your code in this editor
game_set_speed(60, gamespeed_fps);


bpm = 120; //120 bpm
beat_timer = 60/(bpm/60); //30 frames
delay = -4;
beat_time_left = beat_timer + delay;

reaction_timer = 10;
reaction_time_left = 0;

bar_speed = 5;

audio_play_sound(music_test,1,false,.3);




