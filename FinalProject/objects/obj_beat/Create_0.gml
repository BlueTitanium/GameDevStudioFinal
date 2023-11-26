/// @description Insert description here
// You can write your code in this editor

is_player = false;
beat = " ";
attack = "0";

function change_beat_type(type){
	beat = type;
	switch(type){
		case " ":
			sprite_index = noone;
			break;
		case "0":
			sprite_index = spr_beat;
			break;
		case "1":
			sprite_index = spr_beatdirection;
			image_blend = #ff1934;
			image_angle = 0;
			break;
		case "2":
			sprite_index = spr_beatdirection;
			image_blend = #ff1934;
			image_angle = 180;
			break;
		case "3":
			sprite_index = spr_beatdirection;
			image_blend = #ff1934;
			image_angle = 90;
			break;
		case "4":
			sprite_index = spr_beatdirection;
			image_blend = #ff1934;
			image_angle = 270;
			break;
		default:
			break;
	}
}
