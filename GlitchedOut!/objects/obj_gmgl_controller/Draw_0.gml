draw_set_color(strings_color);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_gmgl);

if(state != states.error) { //no errors, display current state message
    draw_text(room_width/2,176,string_hash_to_newline(strings[? "msg_"+string(state)]));
    if(state == states.update_download) {
        draw_text(room_width/2,218,string_hash_to_newline(string(download_progress)+"%"));
    }
}
else { //display error
   draw_text(room_width/2,176,string_hash_to_newline(strings[? "err_"+string(error)])); 
}

