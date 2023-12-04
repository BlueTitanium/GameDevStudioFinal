/// @description Insert description here
// You can write your code in this editor

scale = lerp(scale,1,.1);

draw_set_color(#FFFFFF);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_medium)
draw_text(room_width/2,room_height/2-70,"STRIKING");
draw_set_font(fnt_large);
draw_set_color(#00FFFF);
draw_text_transformed(room_width/2,room_height/2,"BEAT!",scale,scale,0);
draw_set_color(#ff5794);
draw_set_font(fnt_medium)
draw_text(room_width/2,room_height/2+170,"PRESS SPACE TO START");
draw_set_color(#7da9c7);
draw_set_font(fnt_medium)
draw_text(room_width/2,room_height-70,"a game by Taneim and Christina");

draw_set_color(#FFFFFF);



