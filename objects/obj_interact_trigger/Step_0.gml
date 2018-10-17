if(player_collide){
	colliding = true; 
	if(interact){
		global.target = destination[dest.target];
		room_goto(destination[dest.rm]);
	}	
}
else colliding = false;


//Door system re-planning
/*
New system
	All doors have destination to where going. No auto going-back. Keep coords and shit though

	set a var called destination 
		The destination is coords of the other dooor!!!!. So destination is 2 things; the room and coords of the target door.
*/
/*
	New update:r cannot get coords from doors/objs out of the room.
		get them all beforehand (PAIN IN THE ASS)
		
		go through the entire game to start with, cycle through rooms and get data from there.
		

	SOLUTION: activate the xy-coord code once in the room
			paired with transitions where cant move while happening.
			
			Steps: take the target door and room from the oriingal trigger
				Move to room
				In create event take the coords from the target and place player and camera there.
				Later add a transition long enough to disguise this fact.

*/







