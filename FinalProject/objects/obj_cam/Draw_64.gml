/// @description Insert description here
// You can write your code in this editor

if(heal_effect_timer > 0){
	
	draw_set_color(#82ff91);
	draw_set_alpha(lerp(0,0.25,heal_effect_timer/heal_effect_time));
	draw_rectangle(0,0,room_width,room_height,false);
	heal_effect_timer--;
}
if(damage_effect_timer > 0){
	
	draw_set_color(#ff2b2b);
	draw_set_alpha(lerp(0,0.4,damage_effect_timer/damage_effect_time));
	draw_rectangle(0,0,room_width,room_height,false);

	damage_effect_timer--;
}

draw_set_color(c_white);
draw_set_alpha(1);







