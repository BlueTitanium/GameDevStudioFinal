/// @description Insert description here
// You can write your code in this editor
randomize();
game_set_speed(60, gamespeed_fps);


bpm = 120; //120 bpm
beat_spacer = 11; // 11
beat_timer = 60/(bpm/60); //30 frames


beat_time_left = beat_timer;
bar_speed = 5;

beating_o_list = ds_list_create();

num_correct = 0;
num_inputs = 0;
accuracy = 1;
combo = 1;

cur_index = 0; // to spawn
cur_beat = " "; // to hit

reaction_timer = 17;
reaction_allowed=12;
if(beat_timer > 30){
	reaction_timer = beat_timer/2 + 2; //17
	reaction_allowed=reaction_timer-beat_timer/6; //17 - 30/6 = 12
}

reaction_time_left = 0;

finished = false;

audio_stop_all();
delay = 15;
song = music_test_120;
//audio_play_sound(song,1,true,.3);
//alarm[0] = delay;

function hit_beat(){
	num_correct++;
	num_inputs++;
	accuracy = num_correct/num_inputs;
	audio_play_sound(Gimme_Kick7,1,false,1);
}
function miss_beat(){
	
	num_inputs++;
	accuracy = num_correct/num_inputs;
	audio_play_sound(Gimme_Perc23,1,false,1);
	combo = 1;
}


color2 = [149/255, 50/255, 255/255, 255/255];
color1 = [84/255, 33/255, 255/255, 255/255];

main_tiled = layer_get_fx("main_tiled");
alt_tiled = layer_get_fx("alt_tiled");

function background_beat_color(){
	var tmp = color1;
	color1 = color2;
	color2 = tmp;
	if (fx_get_name(main_tiled) == "_filter_tintfilter")
    {            
        fx_set_parameter(main_tiled, "g_TintCol", color1);
    }
	if (fx_get_name(alt_tiled) == "_filter_tintfilter")
    {            
        fx_set_parameter(alt_tiled, "g_TintCol", color2);
    }
}


function spawn_powerup(){
	//anywhere on grid from 5,5 to -5,-5
	var grid_x = round(random_range(-5,5));
	var grid_y = round(random_range(-5,5));
	var _inst;
	_inst = instance_create_layer(-1000,-1000,"Above_tile",obj_heal_spot);
	_inst.set_grid_pos(grid_x,grid_y);
	_inst.can_touch = true;
	_inst.can_move = true;
}


function move_others(beat){
	obj_enemy.move(beat);
	for(var i = 0; i < ds_list_size(beating_o_list); i++){
		if(ds_list_find_value(beating_o_list,i)!= noone){
			ds_list_find_value(beating_o_list,i).move();
		}
	}
	var _percent_powerup = (1-(obj_player.hp/obj_player.max_hp))/2;
	//chance needs to be less than percent powerup to succeed
	var _percent = random_range(0,1);
	if(_percent < _percent_powerup){
		spawn_powerup();
	}
}

