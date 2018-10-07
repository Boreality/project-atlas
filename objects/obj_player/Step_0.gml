/// @description Insert description here
// You can write your code in this editor
//Input
key_left = keyboard_check_direct(ord("A"));
key_right = keyboard_check_direct(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_slide = keyboard_check_pressed(vk_shift);


//Calculate horizontal movement
var dir = key_right - key_left;
hsp += dir * hsp_acc;
if(dir == 0)
{
	var hsp_fric_final = hsp_fric_ground;
	if(!onground) hsp_fric_final = hsp_fric_air;
	hsp = Approach(hsp,0,hsp_fric_final);
}
hsp = clamp(hsp,-hsp_walk,hsp_walk);

//Calc vertical movement
vsp += grv;

//Ground Jump

if(jumpbuffer > 0)
{	
	jumpbuffer--;
	if(key_jump)
	{
	
		jumpbuffer = 0;
		vsp = vsp_jump;
		vsp_frac = 0;
	}
}
vsp = clamp(vsp,-vsp_max,vsp_max);

//Dump fractions and get final integer speeds

hsp += hsp_frac;
vsp += vsp_frac;
hsp_frac = frac(hsp);
vsp_frac = frac(vsp);
hsp -= hsp_frac;
vsp -= vsp_frac;

//Horizontal collision
if(place_meeting(x + hsp,y,obj_wall)) && (!phasing)
{
	
	var onepixel = sign(hsp);
	while (!place_meeting(x+onepixel,y,obj_wall)) x += onepixel;
	hsp = 0;
	hsp_frac = 0;
}
//Horizontal move
x += hsp;

//Vertical Collision
if(!place_meeting(x,y, obj_wall))
{
	mask_index = spr_player_bottom;
	if(place_meeting(x,y + vsp, obj_wall))
	{
		var onepixel = sign(vsp);
		while (!place_meeting(x,y+onepixel,obj_wall)) y += onepixel;
		vsp = 0;
		vsp_frac = 0;	
	}
	mask_index = spr_player;
}
//Vertical Move
y += vsp;

//Calc current status
onground = place_meeting(x,y+1,obj_wall)
if(onground) jumpbuffer = 6;


//Adjust Sprite
if(hsp != 0) image_xscale = sign(hsp);
if(!onground)
{
	sprite_index = spr_player_air;
	image_speed = 0;
	if(vsp >= 0) image_index = 1; else image_index = 0;
	
}
else
{
	if(hsp != 0) sprite_index = spr_player_run; else sprite_index = spr_player
}


