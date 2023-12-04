/// @description Insert description here
// You can write your code in this editor

scale = 1;

bpm = 100; //120 bpm
beat_timer = 60/(bpm/60); //30 frames
global.room_song = music_test_100;
audio_stop_all();
audio_play_sound(global.room_song,1,false,.3);

rm = StartCutscene;
//rm = Room2;

alarm[0] = beat_timer;







