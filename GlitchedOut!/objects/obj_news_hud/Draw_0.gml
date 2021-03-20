/// @description Draw title
draw_sprite_ext(spr_tv, 0, x, y, 5.374, 6.75, 0, c_white, 1);
draw_self();
draw_set_color(c_dkgray);
if(image_index>5.8) draw_text(x,y-175,"News");
draw_set_color(c_white);