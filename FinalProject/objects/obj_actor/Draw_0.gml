/// @description Insert description here
// You can write your code in this editor

if(beat_controller.reaction_time_left > 0){
	scale = lerp(scale,1.5,.5);
} else {
	scale = lerp(scale,1,.5);
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*scale,image_yscale*scale,image_angle,image_blend,image_alpha);









