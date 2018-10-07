/// @description Insert description here
// You can write your code in this editor
if(obj_player.key_interact){
	//only increase page, if page +1 is less than total number of entries
	if(page +1 < array_length_1d(text)){
		page += 1;
	} else {
		instance_destroy();
		creator.alarm[1] = 1; //In creaors (ex. johns) alarm event, will trigger the code required after 1 frame
	}
}