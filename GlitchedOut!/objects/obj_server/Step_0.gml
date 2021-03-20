/// @description  RUN HOLE-PUNCHING RELATED LOGIC
udphp_serverPunch();

/// Send hello world to all connected clients

//First: Display that we live
//global.demo_server += "#SERVER: running";

//This loop will loop through all players
for (var i=0;i<ds_list_size(player_list);i++) {
    var player = ds_list_find_value(player_list,i);
    var player_ip = udphp_playerListIP(player);
    var player_port = udphp_playerListPort(player);
    
    buffer_seek(buffer, buffer_seek_start, 0);
    //10 is the id for the hello world demo server commands. We didn't put this in the
    //constants.
    buffer_write(buffer, buffer_s8, 10);
    network_send_udp(server,player_ip, player_port, buffer, buffer_tell(buffer) );
}

