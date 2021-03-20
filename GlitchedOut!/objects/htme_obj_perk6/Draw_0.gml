/// @description  Draw text
draw_self();
if(display_text == true) {
    draw_set_font(fnt_game);
    draw_text(x, y+40, string_hash_to_newline("Illusionist"));
    draw_set_font(fnt_medium);
    draw_text(x, y+60, string_hash_to_newline("You're creating a copies of"));
    draw_text(x, y+75, string_hash_to_newline("you, to mislead the enemy."));
    
}
draw_set_font(fnt_game);

