/// @description 

// Inherit the parent event
event_inherited();

//dialog.add(spr_player_portrait, "Hello");
dialog.add(spr_dog_portrait, "Doggy: Woof!");
dialog.add(spr_dog_portrait, "*It seems to like you*");
//dialog.add(spr_Character_Blue, "Today it has been snowing a lot hasn't it?");


function end_dialogue(){
	var dialogue_obj = instance_create_layer(0,0,"Instances",oDialogDog);
	dialogue_obj.image_xscale = 0.1;
	dialogue_obj.image_yscale = 0.1;
	dialogue_obj.dia_id = dia_id;
	dialogue_obj.owner = owner;
	owner.dialogue_obj = dialogue_obj;
}