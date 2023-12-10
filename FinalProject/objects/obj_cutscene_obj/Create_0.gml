/// @description Insert description here
// You can write your code in this editor

cutscenes = [spr_start_cutscene1,
			spr_start_cutscene2,
			spr_start_cutscene3,
			spr_start_cutscene4,
			spr_start_cutscene5,
			spr_start_cutscene6]

end_cutscenes = [spr_end_cutscene1,
			spr_end_cutscene2,
			spr_end_cutscene3,
			spr_end_cutscene4,
			spr_end_cutscene5,
			spr_end_cutscene6]

orig = [x,y];

x=-1280;

if(start){
	sprite_index = cutscenes[step-1];
} else {
	sprite_index = end_cutscenes[step-1];
}






