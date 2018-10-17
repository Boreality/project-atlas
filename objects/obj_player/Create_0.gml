
hsp = 0;
vsp = 0;
hsp_frac = 0;
vsp_frac = 0;

hsp_acc = 1;
hsp_fric_ground = 0.70;
hsp_fric_air = 0.35;
hsp_walk = 4;

umbrella = false;
air_check = true;

vsp_jump = -15;
vsp_max = 10;

onground = false;

grv = 0.3;

jumpbuffer = 0;


//Tile collisions
tilemap = layer_tilemap_get_id("Collision");

//positioning

x = global.target.x;
y = global.target.y;



