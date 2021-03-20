/// @description  Draw text
draw_self();
if(display_text == true) {
    draw_set_font(fnt_game);
    draw_text(x, y+40, string_hash_to_newline("Undead"));
    draw_set_font(fnt_medium);
    draw_text(x, y+60, string_hash_to_newline("After 'death' you will"));
    draw_text(x, y+75, string_hash_to_newline("get 5 seconds of life,"));
    draw_text(x, y+90, string_hash_to_newline("for then you're stronger."));
    
}
draw_set_font(fnt_game);

