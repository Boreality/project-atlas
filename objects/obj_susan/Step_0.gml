var middleTextBox = (sprite_get_width(spr_textbox) /2)
var npcHeight = sprite_get_height(spr_john);

if(place_meeting(x,y,obj_player)){
	//If havent already made textbox, make one
	colliding = true;
	if(obj_player.key_interact)
	{
		if(obj_player.x < x){
			image_xscale = -1;	
		} else image_xscale = 1;
		if(my_textbox == noone){
			my_textbox = instance_create_layer(x - middleTextBox,y - (npcHeight * 3),"Text",obj_textbox);
			my_textbox.text = my_text;
			my_textbox.creator = id;
		}
	}
}
else{
	if(my_textbox != noone){
		instance_destroy(my_textbox);
		my_textbox = noone;
	}
	colliding = false;
}



