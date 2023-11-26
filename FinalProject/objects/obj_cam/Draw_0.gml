/// @description Insert description here
// You can write your code in this editor

if(danger_timer > 0){
	danger_timer-=1;
	image_alpha = lerp(image_alpha,.5,.1);
}else{
	image_alpha = lerp(image_alpha,0,.1);
}

draw_self();






