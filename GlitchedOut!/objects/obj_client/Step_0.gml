/// @description  RUN HOLE-PUNCHING RELATED LOGIC
if (!udphp_clientPunch(client_id)) {
    //When this returns false, the connection failed or the client was destroyed.
    show_message("Connection failed (or client stopped)!");
    udphp_handleerror(udphp_dbglvl.DEBUG, udphp_dbgtarget.CLIENT, client_id, "Connection failed (or client stopped)!");
    instance_destroy();
}

/// if connected: Send hello world to server

//First: Display that we live
global.demo_clients += "#CLIENT "+string(client_id)+": running";

//This loop will loop through all players
if (udphp_clientIsConnected(client_id)) {
    buffer_seek(buffer, buffer_seek_start, 0);
    //10 is the id for the hello world demo server commands. We didn't put this in the
    //constants.
    buffer_write(buffer, buffer_s8, 10);
    network_send_udp(client,udphp_clientGetServerIP(client_id),udphp_clientGetServerPort(client_id), buffer, buffer_tell(buffer) );
}

