/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("1"))){
	StartBattle(0);	
	global.backToMenu = true;
	global.loseable = true;
	room_goto(Room1);
}
if(keyboard_check_pressed(ord("2"))){
	StartBattle(1);	
	global.backToMenu = true;
	global.loseable = true;
	room_goto(Room1);
}
if(keyboard_check_pressed(ord("3"))){
	StartBattle(2);	
	global.backToMenu = true;
	global.loseable = true;
	room_goto(Room1);
}








