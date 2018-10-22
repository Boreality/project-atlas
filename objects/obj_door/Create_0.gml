/// @desc Setting variables, is backdrop side
image_speed = 0;
doorstage = 0;
enum doorstage {
    open,
    opening,
    close,
    closing
}
doorstage = doorstage.close;
top = 0;
bottom = 0;


backdrop_midpoint = bbox_bottom + (sprite_get_height(spr_door_backdrop)/2);
backdrop_top = bbox_top + (sprite_get_height(spr_door_backdrop)/10);
backdrop_bottom = bbox_bottom + (sprite_get_height(spr_door_backdrop)/10);
opening_speed = 2;

/*
Door planning

I want it to be not a regular wooden door. Sliding doors up/dowwards when sideways


two objects that move together
one object that somehow moves the sprites on thier own

THIS ONE ->> one object that controls 2 sprites that move. once open, can move through 
state= open, close, opening, closing

Needs 2 spirtes: the actual doors, and the backdrop/collision

determine the distances. 
Have values: 
    Middlepoint (where doors meet) 
        TAke half the backgroud sprite height.
    End points (Where doors stop)
        1/10 of backdrop sprite and 9/10 of sprite height
    

when at static stages (open,close), hard set the values in case it is incorrect



    



*/







