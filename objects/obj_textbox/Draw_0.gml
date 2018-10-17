

//draw textbox
draw_sprite(spr_textbox,0,x,y);

//draw title
draw_text(x,y -15,creator.name);

//draw sprite
draw_set_font(fnt_text); 

draw_text_ext(x+10,y+10,text[page],text_string_height, box_width);



