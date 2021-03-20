/// @description  Draw timer
draw_set_font(fnt_digital20);
show_minutes=string_repeat("0", 2-string_length(string(minutes)))+string(minutes);//if single digit add a leading 0
show_seconds=string_repeat("0", 2-string_length(string(seconds)))+string(seconds);//if single digit add a leading 0

draw_text(x,y,string_hash_to_newline(show_minutes + ":" + show_seconds));
draw_set_font(fnt_game);