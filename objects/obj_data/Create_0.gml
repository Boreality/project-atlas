
//Macros
#macro player_collide place_meeting(x,y,obj_player)
#macro interact obj_player.key_interact

rm0_xpos_default = 512;
rm0_ypos_default = 448;

enum dest
{
	rm,
	target
}

global.target_xpos = rm0_xpos_default;
global.target_ypos = rm0_ypos_default;
global.target = 0;

room_goto_next(); //Leave for menu