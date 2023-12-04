/// @description 

if(showing_dialog == true) {
	
	
	var text_x = 30;
	var text_y = 18;
	var height = 32;
	var border = 5;
	var padding = 16;	
	
	var translate_Y = room_height-sprite_get_height(current_dialog.sprite)-padding*2;
	
	height = string_height(current_dialog.message);
	
	if(sprite_get_height(current_dialog.sprite) > height) {
		height = sprite_get_height(current_dialog.sprite);
	}
	
	height += padding * 2;
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2);
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0 +translate_Y, display_get_gui_width(), height+translate_Y, false);
	
	draw_set_color(c_white);
	draw_rectangle(border, border +translate_Y, display_get_gui_width() - border, height - border +translate_Y, false);
	
	draw_set_color(c_black);
	draw_rectangle((border * 2), (border * 2) +translate_Y, display_get_gui_width() - (border * 2), height - (border * 2) + translate_Y, false);
	
	if(current_dialog.sprite != -1) {
		draw_sprite(current_dialog.sprite, 0, 
		border * 3 +sprite_get_height(current_dialog.sprite)/2,
		border * 3 +translate_Y  +sprite_get_height(current_dialog.sprite)/2);
	}
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_small);
	draw_set_color(c_white);
	draw_text_ext(text_x, text_y+translate_Y, current_dialog.message, 16, display_get_gui_width() - 220);
	
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_set_font(fnt_small);
	draw_set_color(c_white);
	draw_text( display_get_gui_width() - (border * 2), height - (border * 2) + translate_Y, "press space to continue...")
	
	alpha = lerp(alpha, 1, 0.06);
}

draw_set_alpha(1);