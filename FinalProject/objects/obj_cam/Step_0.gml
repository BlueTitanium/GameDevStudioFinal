/// @description Insert description here
// You can write your code in this editor

if (shake_timer > 0){

	shake_timer -= 1;
	
	shake_x = random_range(-shake_amt, shake_amt);
	shake_y = random_range(-shake_amt, shake_amt);
	
} else {
	shake_x = 0;
	shake_y = 0;
	
	
}
if(zoom_timer > 0){
	zoom_timer-=1;
	zoom_intensity = lerp(zoom_intensity,0.04,.1);
	fx_set_parameter(zoom_fx,"g_ZoomBlurIntensity",zoom_intensity);
} else {
	zoom_intensity = lerp(zoom_intensity,0,.1);
	fx_set_parameter(zoom_fx,"g_ZoomBlurIntensity",zoom_intensity);
}

camera_set_view_pos(global.camid, x+shake_x, y+shake_y);









