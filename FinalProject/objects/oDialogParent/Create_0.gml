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
}

function end_dialogue(){
	
}

