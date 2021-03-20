/// @description START SERVER
instance_create(0,0,obj_server);
//Ask player for port
/*var port = real(get_string("On which port should the server listen?(4 digits)","6510"));

//Setup server, on success start game, on failure end the game.
if (htme_serverStart(port,1)) {
	
    room_goto(htme_rm_lobbygm);
} else {
    show_message("Could not start server! Check your network configuration!");
	game_end();
}