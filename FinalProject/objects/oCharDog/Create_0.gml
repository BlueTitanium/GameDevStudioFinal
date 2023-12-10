/// @description Insert description here
// You can write your code in this editor

dia_id = 3;

dialogue_obj = noone;


dialogue_obj = instance_create_layer(0,0,"Instances",oDialogDog);
dialogue_obj.image_xscale = 0.1;
dialogue_obj.image_yscale = 0.1;
dialogue_obj.dia_id = dia_id;
dialogue_obj.owner = id;

dont_move = instance_create_layer(x,y+16,"DONTMOVE",obj_dont_move);