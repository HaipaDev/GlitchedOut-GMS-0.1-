/// @description  Display text
draw_set_font(fnt_game);
draw_text_colour(__view_get( e__VW.XView, 0 )+240, __view_get( e__VW.YView, 0 )+45, string_hash_to_newline(event_text), c_red, c_maroon, c_maroon, c_red, .9);

