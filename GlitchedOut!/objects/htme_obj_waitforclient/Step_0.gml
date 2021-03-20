/// @description  Check if client is connected
if (htme_clientIsConnected()) {
    room_goto(htme_rm_lobbygm);
}
if (htme_clientConnectionFailed()) {
    show_message("Connection with server failed!");
    game_restart();
}

