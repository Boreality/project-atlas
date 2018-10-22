/// @desc Setting variables, is backdrop side
image_speed = 0;

enum doorstage {
    open,
    opening,
    close,
    closing
}



switch(doorstage)
{
    case doorstage.open:
        //Set where the door sprites should be
    top.y = backdrop_top;
    bottom.y = backdrop_bottom;
    break;
    case doorstage.opening:
        //USing apporach move towards the centre
        Approach(top.y,backdrop_top,opening_speed);
        Approach(bottom.y,backdrop_bottom,opening_speed);
    break;    
    case doorstage.close:
      //Set where the door sprites should be
        top.y = backdrop_midpoint;
        bottom.y = backdrop_midpoint;
    break;

    case doorstage.closing:
        //using approach move towards the top and bottom
        Approach(top.y,backdrop_midpoint,opening_speed);
        Approach(bottom.y,backdrop_midpoint,opening_speed);
     
    break;

}
backdrop_midpoint = bbox_bottom + (sprite_get_height(OWN SPRITE)/2);
backdrop_top = bbox_top + (sprite_get_height(OWN SPRITE)/10);
backdrop_bottom = bbox_bottom + (sprite_get_height(OWN SPRITE)/10));
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







