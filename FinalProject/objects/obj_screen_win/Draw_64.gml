/// @description Insert description here
// You can write your code in this editor

if(shown){
	if(fade_time_left < fade_timer){
		fade_time_left++;
	} else {
		
	}
	var alpha = lerp(0,1,fade_time_left/fade_timer);
	draw_set_alpha(alpha*.4);
	draw_set_color(c_black);
	draw_rectangle(-100,-100,room_width+100,room_height+100,false);
	draw_set_color(c_white);
	draw_set_alpha(alpha);
	draw_set_font(fnt_medium);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2,room_height/2,"YOU WIN!");
	draw_set_font(fnt_small);
	draw_text(room_width/2,room_height/2+50,"Press SPACE to continue");
	draw_set_alpha(1);
	if(alpha >.9 and keyboard_check_pressed(vk_space)){
		global.lost = false;
		audio_stop_all();
		if(global.backToMenu){
			room_goto(START);	
		} else {
			room_goto(Room2);
		}
	}
}

