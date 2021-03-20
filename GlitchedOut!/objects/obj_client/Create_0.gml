/// @description  START CLIENT

//Set up a buffer for the client.
buffer = buffer_create(256, buffer_grow, 1);

//Create a udp socket.
client = network_create_socket(network_socket_udp);

//Get IP
server_ip = get_string("Server IP:","");

//We can also connect directly instead of trying holepunching.
//this should be used for local connections as hole punching is not neccesary or possible
//with the master server.
var directconnect = show_question("Should we connect directly without hole punching?");
//The client will always fall back to direct connect if the master server has no entry
//on this server.
//TODO: Currently the client will freeze when the master server does not respond. With an upcoming
//      update the client will also fall back to directconnect, when the master server
//      does not respond. The client falls back to directconenct if the master server is
//      not reachable at all though!

//We need the port when we are connecting directly
if (directconnect) {
    directconnect_port = real(get_string("Port:","6510"));
} else directconnect_port = 0;

//Okay great! Let's set up the hole punching stuff.
client_id = udphp_createClient(client,            //udp socket     A UDP socket created with network_create_socket
                               server_ip,         //string         The IP of the server to connect to
                               buffer,            //buffer         A buffer that will be used to send data
                               directconnect,     //boolean        If true, holepunching will be skipped and we attempt to connect to the server directl
                               directconnect_port);//<see udphp_createClient>
if (client_id < 0) {
    //Client could not be created. Destroy instace. UDPHP will also show a message.
    instance_destroy();
}

