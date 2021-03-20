/// @description  Draw text
draw_self();
if(display_text == true) {
    draw_set_font(fnt_game);
    draw_text(x, y+40, string_hash_to_newline("Split"));
    draw_set_font(fnt_medium);
    draw_text(x, y+60, string_hash_to_newline("You randomly split up"));
    draw_text(x, y+75, string_hash_to_newline("shooting into enemy if"));
    draw_text(x, y+90, string_hash_to_newline("they miss you lose health."));
    
}
draw_set_font(fnt_game);

