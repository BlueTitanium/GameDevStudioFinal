/// @description Insert description here
// You can write your code in this editor

//THIS OBJECT SHOULD BE SET IN THE MAIN MENU AND NEVER USED AGAIN
randomize();
game_set_speed(60, gamespeed_fps);

//if the dialogue should be enabled for the objects

//contact, win dialog, lose dialog
global.should_dia = [
					[true,false], //start,end
					[true,false], //start,end
					[true,false], //start,end
					[true,false],
					[true,false],
					[true,false],
					[true,false],
					]

global.next_grid_pos = [0,0];
////pattern = 0 -> any, 1->up, 2->down, 3->left, 4->right, " " -> none
global.enemy_pattern = "011033022022044044011033"; 
////pattern = a -> large 
global.enemy_attack_pattern = "0000000a0000000a0000000a";
global.song = noone;
global.bpm = 100;
global.enemy_hp = 50;
global.enemy_portrait = spr_enemy_portrait;
global.title = "";
global.loseable = false;
global.lost = false;
global.backToMenu = false;