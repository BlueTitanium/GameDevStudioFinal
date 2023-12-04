// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StartBattle(char_id){
	switch(char_id){
		case 0: //tutorial 1
			global.enemy_pattern = "0103020204040103";
			global.enemy_attack_pattern = "0000000000000000";
			global.song = noone;
			global.bpm = 100;
			global.enemy_hp = 10;
			global.powerups_allowed = [0];
			global.title = "MOVE ON THE BEAT and STEP ON THE GREEN CIRCLES";
			global.enemy_portrait = spr_enemy_portrait;
			break;
		case 1: //tutorial 2
			global.enemy_pattern = "011033022022044044011033";
			global.enemy_attack_pattern = "0000000a0000000a0000000a";
			global.song = noone;
			global.bpm = 120;
			global.enemy_hp = 50;
			global.powerups_allowed = [0];
			global.title = "ATTACK ON THE BEAT and AVOID THE DANGEROUS SPOTS. WIN!";
			global.enemy_portrait = spr_enemy_portrait2;
			break;
		case 2: //final 
			////pattern = 0 -> any, 1->up, 2->down, 3->left, 4->right, " " -> none
			global.enemy_pattern 
			= "0141414422223232323313131311114424242000"; //heart
			global.enemy_attack_pattern 
			//= "bcbcbccbbbbcbcbcbccbcbcbcbbbbccbcbcb0000";
			//= "b0b0b0c0b0b0b0b0b0c0c0c0c0b0b0c0c0c00000";
			= "b000b000b000b000b000c000c000b000c0000000";
			global.song = music_test_205_peritune_epicbattledeity;
			global.bpm = 205;
			global.enemy_hp = 150;
			global.powerups_allowed = [0,1];
			global.title = "DEFEAT THE CHAMPION!";
			global.enemy_portrait = spr_enemy_portrait3;
			break;
		default:
			break;
	}
}