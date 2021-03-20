/// @description  Draw menu text
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
if (room = rm_menu) {
    draw_text(60, 581, string_hash_to_newline("Version 0.1.0"));
    draw_text(109, 602, string_hash_to_newline("Creator: HyperGamesDev"));
    draw_text(431, 518, string_hash_to_newline("Music by:"));
    draw_text(430, 540, string_hash_to_newline("SiriusBeatTV"));
    draw_text(430, 570, string_hash_to_newline("Sounds from:"));
    draw_text(430, 588, string_hash_to_newline("freesound.org"));
}

