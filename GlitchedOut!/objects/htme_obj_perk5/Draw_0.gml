/// @description  Draw text
draw_self();
if(display_text == true) {
    draw_set_font(fnt_game);
    draw_text(x, y+40, string_hash_to_newline("Bubble"));
    draw_set_font(fnt_medium);
    draw_text(x, y+60, string_hash_to_newline("On start you get"));
    draw_text(x, y+75, string_hash_to_newline("defensive bubble."));
    
}
draw_set_font(fnt_game);

