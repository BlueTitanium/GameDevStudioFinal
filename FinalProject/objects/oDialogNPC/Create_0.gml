/// @description 

// Inherit the parent event
event_inherited();

//dialog.add(spr_player_portrait, "Hello");
dialog.add(spr_npc_portrait, "The Old Dancer: My old bones may not move like they used to...");
dialog.add(spr_npc_portrait, "The Old Dancer: but watching you dance sparks an old fire in me!");
//dialog.add(spr_Character_Blue, "Today it has been snowing a lot hasn't it?");


function end_dialogue(){
	var dialogue_obj = instance_create_layer(0,0,"Instances",oDialogNPC);
	dialogue_obj.image_xscale = 0.1;
	dialogue_obj.image_yscale = 0.1;
	dialogue_obj.dia_id = dia_id;
	dialogue_obj.owner = owner;
	owner.dialogue_obj = dialogue_obj;
}