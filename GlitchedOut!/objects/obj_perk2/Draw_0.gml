/// @description  Draw text
draw_self();
if(display_text == true) {
    draw_set_font(fnt_game);
    draw_text(x, y+40, string_hash_to_newline("Lizard"));
    draw_set_font(fnt_medium);
    draw_text(x, y+60, string_hash_to_newline("When you're not under"));
    draw_text(x, y+75, string_hash_to_newline("attack you will regen."));
    
}
draw_set_font(fnt_game);

