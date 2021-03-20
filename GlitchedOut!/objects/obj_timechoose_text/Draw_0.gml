/// @description  Draw text
instance_activate_object(obj_timer_minutes);
draw_set_font(fnt_medium);
draw_text(x, y-1, string_hash_to_newline(string(obj_timer_minutes.minutes)+"min"));
draw_set_font(fnt_game);
instance_deactivate_object(obj_timer_minutes);

