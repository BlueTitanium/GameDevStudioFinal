/// @description 

dialog = new Dialogue();
dia_id = 0;

key_next = vk_space;

started_dialog = false;
showing_dialog = false;

current_dialog = {};

alpha = 0;

image_alpha=0;
image_xscale=3;
image_yscale=3;


function show_dialogue(){
	current_dialog = dialog.pop();
	showing_dialog = true;
	obj_player_world.can_move = false;
	audio_play_sound(Gimme_Kick13,1,false,.4);
}

function end_dialogue(){
	
}

