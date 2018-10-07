
if(place_meeting(x,y,obj_player)){
	//If havent already made textbox, make one
	if(obj_player.key_interact)
	{
		if(my_textbox == noone){
			my_textbox = instance_create_layer(x,y + 50,"Text",obj_textbox);
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
	
}



