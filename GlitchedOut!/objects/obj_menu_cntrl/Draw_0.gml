/// @description  Draw menu text
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_color(c_white);
if (room = rm_menu) {
    draw_text(60, 581, string_hash_to_newline("Version " + global.gmversion));
    draw_text(109, 602, string_hash_to_newline("Creator: HyperGamesDev"));
    draw_text(431, 518, string_hash_to_newline("Music by:"));
    draw_text(430, 540, string_hash_to_newline("SiriusBeatTV"));
    draw_text(430, 570, string_hash_to_newline("Sounds from:"));
    draw_text(430, 588, string_hash_to_newline("freesound.org"));
}