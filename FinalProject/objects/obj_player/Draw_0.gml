/// @description Insert description here
// You can write your code in this editor

event_inherited();

draw_set_color(c_white);
draw_rectangle(hp_bar_start, 560, hp_bar_start + hp_bar_length-1, 636, false);
draw_set_color(c_black);
draw_rectangle(hp_bar_start+10, 560+10, hp_bar_start + hp_bar_length-11, 636-10, false);
draw_set_color(#47f0ff);
hp_shown = lerp(hp_shown, hp_bar_start + (hp_bar_length - 21)*(hp/max_hp) +10,.2);
draw_rectangle(hp_bar_start+10, 560+10,hp_shown, 636-10, false);

draw_set_color(c_white);



