/// @description Insert description here
// You can write your code in this editor

x = lerp(x,start_x + 32*grid_pos_x,.1);
y = lerp(y,start_y + 32*grid_pos_y + offset_y,.1);

if(grid_pos_x >= 5 || grid_pos_x <= -5 || grid_pos_y >= 5 || grid_pos_y <= -5){
	visible = false;
}






