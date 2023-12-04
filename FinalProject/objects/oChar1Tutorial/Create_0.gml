/// @description Insert description here
// You can write your code in this editor

dia_id = 1;

dialogue_obj = noone;



if(global.should_dia[dia_id][1]){ //end
	dialogue_obj = instance_create_layer(x,y,"Instances",oDialog1TutorialEnd);
	dialogue_obj.dia_id = dia_id;
	
	dialogue_obj = instance_create_layer(0,0,"Instances",oDialog1TutorialStart);
	dialogue_obj.image_xscale = 0.1;
	dialogue_obj.image_yscale = 0.1;
	dialogue_obj.dia_id = dia_id;
	y-=32;
} else if(global.should_dia[dia_id][0]){ //start
	dialogue_obj = instance_create_layer(x,y+16,"Instances",oDialog1TutorialStart);
	dialogue_obj.dia_id = dia_id;
} else{
	dialogue_obj = instance_create_layer(0,0,"Instances",oDialog1TutorialStart);
	dialogue_obj.image_xscale = 0.1;
	dialogue_obj.image_yscale = 0.1;
	dialogue_obj.dia_id = dia_id;
	y-=32;
}


dont_move = instance_create_layer(x,y+16,"DONTMOVE",obj_dont_move);