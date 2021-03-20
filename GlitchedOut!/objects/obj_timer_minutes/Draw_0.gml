/// @description  Draw timer
draw_set_font(fnt_digital20);
draw_set_color(color);
show_minutes=string_repeat("0", 2-string_length(string(minutes)))+string(minutes);//if single digit add a leading 0
show_seconds=string_repeat("0", 2-string_length(string(seconds)))+string(seconds);//if single digit add a leading 0

draw_text(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+20,string_hash_to_newline("Time: " + show_minutes + ":" + show_seconds));
draw_set_font(fnt_game);
draw_set_color(c_white);