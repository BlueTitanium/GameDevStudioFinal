/// @description Insert description here
// You can write your code in this editor
event_inherited();

start_x = x;
start_y = y;
grid_pos_x = 0;
grid_pos_y = 0;

can_move = false;

hp = 10;
max_hp = hp;

hp_bar_delta = 320+16;
hp_bar_start = room_width/2 - hp_bar_delta;
hp_bar_length = hp_bar_delta*2;
hp_shown = hp_bar_start + hp_bar_length-11;

function take_damage(_amount){
	if(_amount>0){
		obj_cam.DamageEffect();	
	} else {
		obj_cam.HealEffect();	
	}
	hp-=_amount;
	if(hp <= 0){
		hp = 0;	
	}
	if(hp >=max_hp){
		hp = max_hp;	
	}
}