/// @description  Draw text (only in udphp_room)
/// @param only in udphp_room
/*if (room == udphp_room) {
    draw_set_color(c_black);
    draw_sprite(udphp_logo,0,20,20);
    draw_text(20,132,string_hash_to_newline("GMnet PUNCH demo! Start a server and as many clients as you like#Make sure to have a look at the console!"));
    draw_text(20,228,string_hash_to_newline("Server output:#"+global.demo_server));
    draw_text(352,228,string_hash_to_newline("Clients output:#"+global.demo_clients));
    draw_text(20,520,string_hash_to_newline("For hole punching to make sense, make sure you#connect to your external ip via this demo! You can get it via#websites like whatismyip.com"));
}

