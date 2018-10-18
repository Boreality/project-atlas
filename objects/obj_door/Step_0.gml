if(place_meeting(x+10,y,obj_player)) or (place_meeting(x-10,y,obj_player))
{
	draw_interact();
	if(interact)
	{
		if(image_index > 0) image_index = 0;
		else image_index = 1;
		
	}

}