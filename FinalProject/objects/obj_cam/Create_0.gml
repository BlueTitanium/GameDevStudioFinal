/// @description Insert description here
// You can write your code in this editor

global.camid = view_camera[view_current];
global.cam_wid = camera_get_view_width(global.camid);
global.cam_hei = camera_get_view_height(global.camid);
x=0;
y=0;
shake_timer = 0;
shake_amt = 0;
shake_x = 0;
shake_y = 0;

zoom_fx = layer_get_fx("FX_ZOOMBLUR");
zoom_intensity = 0;
zoom_timer = 0;

danger_timer = 0;
image_alpha = 0;
image_blend = #ff2929;

heal_effect_time = 10;
heal_effect_timer = 0;
damage_effect_time = 10;
damage_effect_timer = 0;
function ShakeScreen(_amt, _dur){
	shake_timer = _dur;
	shake_amt = _amt;
}
function Zoom(_dur){
	zoom_timer = _dur;
}
function HealEffect(_dur = 15){
	heal_effect_time = _dur;
	heal_effect_timer = heal_effect_time;
}
function DamageEffect(_dur = 15){
	damage_effect_time = _dur;
	damage_effect_timer = damage_effect_time;
}
function Danger(){
	danger_timer = 2;
}
