/// @description  RUN HOLE-PUNCHING RELATED LOGIC
udphp_clientNetworking(client_id);

/// Retrieve hello world from server

var in_ip = ds_map_find_value(async_load, "ip");
var in_id = ds_map_find_value(async_load, "id");
var in_port = ds_map_find_value(async_load, "port");
var in_buff = ds_map_find_value(async_load, "buffer");

//Only continue, if this packet is for this client and from server
if (in_id != client or in_ip != udphp_clientGetServerIP(client_id)) exit;

//Check command
switch buffer_read(in_buff, buffer_s8 ) {
    case 10:
        global.demo_clients += "#CLIENT "+string(client_id)+": Server says hello";
    break;
}

