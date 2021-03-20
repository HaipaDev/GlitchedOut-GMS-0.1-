/// @description Draw text
draw_self();
draw_set_font(fnt_game);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text(x+175, y+10, txt_title);
draw_set_font(fnt_medium);
draw_set_halign(fa_middle);
draw_set_valign(fa_left);
draw_text(x+175, y+30, txt_desc);
draw_set_font(fnt_game);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);