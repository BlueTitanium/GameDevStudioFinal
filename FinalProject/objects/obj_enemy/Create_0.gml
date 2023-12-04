/// @description Insert description here
// You can write your code in this editor
event_inherited();

grid_pos_x = 10;
grid_pos_y = 0;

start_x = obj_player.start_x;
start_y = obj_player.start_y;


x = start_x + 32*grid_pos_x;
y = start_y + 32*grid_pos_y;

hp = global.enemy_hp;
max_hp = hp;

hp_bar_delta = 320+16;
hp_bar_start = room_width/2 - hp_bar_delta;
hp_bar_length = hp_bar_delta*2;
hp_shown = hp_bar_start + hp_bar_length-11;

function take_damage(_amount){
	hp -= _amount;
	if(hp<=0){
		hp = 0;
		obj_screen_win.show();
		beat_controller.finished = true;
	}
}

function spawn_attack_point(){
	var _inst;
	_inst = instance_create_layer(-1000,-1000,"Above_tile",obj_attack_spot);
	_inst.set_grid_pos(grid_pos_x-10,grid_pos_y);
	_inst.can_touch = true;
	_inst.can_move = true;
}

function spawn_enemy_attack(attack){ //variable for attack in case multiple attack types
	switch(attack){
		case "a": //3x3
			var _inst;
			var r = 1;
			for(var i = -r; i <=r;i++){
				for(var j = -r; j <= r; j++){
					_inst = instance_create_layer(-1000,-1000,"Above_tile",obj_attack_spot_e);
					_inst.set_grid_pos(obj_player.grid_pos_x + i, obj_player.grid_pos_y +j);
					_inst.can_move = true;
				}
			}
			break;
		case "b"://horizontal
			var _inst;
			var r = 4;
			for(var i = -r; i <=r;i++){
				_inst = instance_create_layer(-1000,-1000,"Above_tile",obj_attack_spot_e);
				_inst.set_grid_pos(i, obj_player.grid_pos_y);
				_inst.decay_moves_left =3;
				_inst.can_move = true;
			}
			break;
		case "c"://vertical
			var _inst;
			var r = 4;
			for(var i = -r; i <=r;i++){
				_inst = instance_create_layer(-1000,-1000,"Above_tile",obj_attack_spot_e);
				_inst.set_grid_pos(obj_player.grid_pos_x, i);
				_inst.decay_moves_left =3;
				_inst.can_move = true;
			}
			break;
		default:
			break;
	}
	
	
}

function move(_input){
	if(hp>0){
		switch(_input){
			case " ":
				break;
			case "0":
			
				break;
			case "1":
				grid_pos_y-=1;
				audio_play_sound(Gimme_ClosedHat2,1,false,1);
				spawn_attack_point();
				break;
			case "2":
				grid_pos_y+=1;
				audio_play_sound(Gimme_ClosedHat2,1,false,1);
				spawn_attack_point();
				break;
			case "3":
				grid_pos_x-=1;
				audio_play_sound(Gimme_ClosedHat2,1,false,1);
				spawn_attack_point();
				break;
			case "4":
				grid_pos_x+=1;
				audio_play_sound(Gimme_ClosedHat2,1,false,1);
				spawn_attack_point();
				break;
			default:
				break;
		}
	}
}
