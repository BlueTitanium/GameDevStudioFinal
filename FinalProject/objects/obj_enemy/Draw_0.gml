/// @description Insert description here
// You can write your code in this editor
event_inherited();

draw_set_color(c_white);
draw_rectangle(hp_bar_start, 131, hp_bar_start + hp_bar_length-1, 207, false);
draw_set_color(c_black);
draw_rectangle(hp_bar_start+10, 131+10, hp_bar_start + hp_bar_length-11, 207-10, false);
draw_set_color(#ff4d40);
hp_shown = lerp(hp_shown, hp_bar_start + (hp_bar_length - 21)*(hp/max_hp) +10,.2);
draw_rectangle(hp_bar_start+10, 131+10,hp_shown, 207-10, false);

draw_set_color(c_white);


