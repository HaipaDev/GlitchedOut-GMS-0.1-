/// @description  Draw Text
draw_self();
draw_set_font(fnt_game);

if (room = rm_loading) {
    draw_set_halign(fa_center);
    draw_text(x, y-37, string_hash_to_newline("Loading: " + string(loadprogress)+"%"));
    draw_sprite_ext(spr_loadingbar, 1, x, y, loadprogress/100, 1, 0, c_white, 1);
}

