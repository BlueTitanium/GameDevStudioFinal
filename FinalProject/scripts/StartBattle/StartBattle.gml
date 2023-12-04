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
			global.title = "MOVE ON THE BEAT and STEP ON THE GREEN CIRCLES";
			global.enemy_portrait = spr_enemy_portrait;
			break;
		case 1: //tutorial 2
			global.enemy_pattern = "011033022022044044011033";
			global.enemy_attack_pattern = "0000000a0000000a0000000a";
			global.song = noone;
			global.bpm = 120;
			global.enemy_hp = 50;
			global.title = "ATTACK ON THE BEAT and AVOID THE DANGEROUS SPOTS. WIN!";
			global.enemy_portrait = spr_enemy_portrait2;
			break;
		case 2: //final 
			global.enemy_pattern = "011033022022044044011033";
			global.enemy_attack_pattern = "0000000a0000000a0000000a";
			global.song = music_test_205_peritune_epicbattledeity;
			global.bpm = 205;
			global.enemy_hp = 50;
			global.title = "ARTIST: PERITUNE - SONG: EPIC BATTLE DIETY";
			global.enemy_portrait = spr_enemy_portrait3;
			break;
		default:
			break;
	}
}