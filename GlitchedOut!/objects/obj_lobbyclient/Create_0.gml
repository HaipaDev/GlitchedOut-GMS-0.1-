/// @description  START CLIENT
//This extends obj_client (obj_client is the parent)!
//It's created by the lobby

buffer = buffer_create(256, buffer_grow, 1);
client = network_create_socket(network_socket_udp);

server_ip = global.tmp_lobby_ip;
var directconnect = false;
directconnect_port = 0;
client_id = udphp_createClient(client,server_ip,buffer,directconnect,directconnect_port);
if (client_id < 0) {
    instance_destroy();
}

