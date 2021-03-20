/// @description Stop last client
var client_id = ds_map_size(global.udphp_clients_udp);
while (ds_map_exists(global.udphp_clients_udp,client_id)) {client_id++}
udphp_stopClient(client_id-1);

