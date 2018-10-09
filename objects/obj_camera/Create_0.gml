
following = obj_player;
cam = view_camera[1];
camera_set_view_size(cam,1080,720);

view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) /2;



xTo = x;
yTo = y;


shake_length = 0;	//How long it takes
shake_magnitude = 0;	//How intense it is
shake_remain = 0;	//Timer 
shake_buff = 64;
