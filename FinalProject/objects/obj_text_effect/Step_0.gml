/// @description Insert description here
// You can write your code in this editor


y+=spd;

if(FadeInDur > 0){
	FadeInDur--;
	alpha = lerp(0,target_alpha,1- FadeInDur/FadeInDurMax);
	y+=spd/3;
} else if(StayDur > 0){
	StayDur--;
	alpha = lerp(alpha,target_alpha,.3);
	y+=spd/6;
 }else if(FadeOutDur > 0){
	FadeOutDur--;
	alpha = lerp(target_alpha,0,1-FadeOutDur/FadeOutDurMax);
	y+=spd;
} else {
	instance_destroy();	
}