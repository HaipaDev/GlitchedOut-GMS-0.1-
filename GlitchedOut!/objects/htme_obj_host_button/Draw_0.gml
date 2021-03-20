/// @description  Draw text
event_inherited();
draw_self();
draw_set_font(fnt_game);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y-1, string_hash_to_newline(text));

