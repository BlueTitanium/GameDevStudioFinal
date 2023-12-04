/// @description Insert description here
// You can write your code in this editor

scale = lerp(scale,1,.3);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*scale,image_yscale*scale,image_angle,image_blend,image_alpha);


draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_font(fnt_small2);
draw_set_color(c_white);
draw_text(20,room_height-20,"Use WASD or the ARROW KEYS\nto move")