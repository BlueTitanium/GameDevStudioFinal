/// @description Insert description here
// You can write your code in this editor

dia_id = 2;

dialogue_obj = noone;


if(global.should_dia[dia_id][1]){ //end
	if(global.lost = false){
		dialogue_obj = instance_create_layer(x,y,"Instances",oDialog2Win);
		dialogue_obj.dia_id = dia_id;
	} else {
		dialogue_obj = instance_create_layer(x,y,"Instances",oDialog2Lose);
		dialogue_obj.dia_id = dia_id;	
	}
	
	
	dialogue_obj = instance_create_layer(0,0,"Instances",oDialog2Start);
	dialogue_obj.image_xscale = 0.1;
	dialogue_obj.image_yscale = 0.1;
	dialogue_obj.dia_id = dia_id;
} else if(global.should_dia[dia_id][0]){ //start
	dialogue_obj = instance_create_layer(0,0,"Instances",oDialog2Start);
	dialogue_obj.image_xscale = 0.1;
	dialogue_obj.image_yscale = 0.1;
	dialogue_obj.dia_id = dia_id;
} else{
	dialogue_obj = instance_create_layer(0,0,"Instances",oDialog2Start);
	dialogue_obj.image_xscale = 0.1;
	dialogue_obj.image_yscale = 0.1;
	dialogue_obj.dia_id = dia_id;
}


dont_move = instance_create_layer(x,y+16,"DONTMOVE",obj_dont_move);