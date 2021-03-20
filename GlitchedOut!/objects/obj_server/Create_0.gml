/// @description  START SERVER

//Make sure there is no server running:
if (instance_number(obj_server) > 1) {instance_destroy(); exit;}

//Set up a buffer for the server and a list to hold the player.
player_list = ds_list_create();
buffer = buffer_create(256, buffer_grow, 1);

//Create a udp server and listen on port, first ask for port
var port = "6510"//real(get_string("On which port should the server listen?","6510"));
server = network_create_server(network_socket_udp,port,1);

//Okay great! Let's set up the hole punching stuff.
ret = udphp_createServer(server,      //udp server    A UDP Server created with network_create_server
                         buffer,      //buffer         A buffer that will be used to send data
                         player_list);//ds_list        A list that players will be saved to. Use this to get the connected clients. Entries can be parsed with udphp_playerListIP and udphp_playerListPort
if (!ret) {
    //Server could not be created. Destroy instace. GMnet PUNCH will also show a message.
    instance_destroy();
}
//Set the 8 data strings. These are used for the lobby and can also be
//retrived by connected clients using udphp_clientReadData().
udphp_serverSetData(1,"gmnet_punch_122"); //1 is reserved for game name and version! Change it when making your own game!
udphp_serverSetData(2,"GMnet PUNCH demo Server"); //2 is used for game name in our demo lobby
udphp_serverSetData(3,"This is a GMnet PUNCH demo server!"); //3 is used for game description in our demo lobby
//4-8 are unused by the demo.

//When you need to change this data after the server has already conncted to
//the master server, see udphp_serverCommitData();

