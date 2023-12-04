/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)){
	step+=1;
	audio_play_sound(Gimme_Kick13,1,false,.4);
	if(step > steps){
		room_goto(Room2);	
	}
}



