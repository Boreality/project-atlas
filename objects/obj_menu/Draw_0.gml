var rm_w_mid = room_width /2;
var rm_h_mid = room_height/2;

draw_set_font(fnt_menu);
draw_text(rm_w_mid,rm_h_mid,"Atlas");
draw_text(rm_w_mid + (rm_w_mid/2),rm_h_mid,"Atlas");

draw_set_font(fnt_text);
draw_text(rm_w_mid,rm_h_mid + 50, "Start Game");
draw_text(rm_w_mid + (rm_w_mid/2),rm_h_mid + 50, "Load Game");