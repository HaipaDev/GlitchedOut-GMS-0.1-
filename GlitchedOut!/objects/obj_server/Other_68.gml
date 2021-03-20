/// @description  RUN HOLE-PUNCHING RELATED LOGIC
udphp_serverNetworking();

/// Retrieve hello world from clients

var in_buff = ds_map_find_value(async_load, "buffer");
var in_ip = ds_map_find_value(async_load, "ip");
var in_port = ds_map_find_value(async_load, "port");
var in_id = ds_map_find_value(async_load, "id");

//Only continue, if this packet is for this server
if (in_id != server) exit;

//Check command
switch buffer_read(in_buff, buffer_s8 ) {
    case 10:
        //We should check if this player is actually already connected, but we are skipping that for this demo
        //global.demo_server += "#S: "+in_ip+":"+string(in_port)+" says hello";
    break;
}

