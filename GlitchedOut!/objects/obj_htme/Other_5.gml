/// @description htme_roomend(); - Clear up instances
/// @function htme_roomend

/*if(htme_isServer())htme_globalSet("ready1",false,buffer_bool);
else if(!htme_isServer())htme_globalSet("ready2",false,buffer_bool);
if(htme_isServer())htme_globalSet("readyst1",false,buffer_bool);
else if(!htme_isServer())htme_globalSet("readyst2",false,buffer_bool);*/
if(room==htme_rm_game){
	if (!self.isConnected) exit;

	if (self.isServer) {
	    htme_serverShutdown();
	} else {
	    htme_clientDisconnect();
	}
	
}
if(room==htme_rm_lobbygm){
	if(htme_isServer()){
		htme_globalSet("ready1",false,buffer_bool);
		htme_globalSet("deleteRtimer",true,buffer_bool);
	}
	else if(!htme_isServer()){
		htme_globalSet("ready2",false,buffer_bool)
		htme_globalSet("deleteRtimer",true,buffer_bool);
	}

}
if(room==htme_rm_game){
	if(htme_isServer()){
		htme_globalSet("readyst1",false,buffer_bool);
		htme_globalSet("stopserver",true,buffer_bool);
	}
	else if(!htme_isServer()){
		htme_globalSet("readyst2",false,buffer_bool);
		htme_globalSet("stopserver",true,buffer_bool);
	}	
}
if(room==htme_rm_game)alarm[0] = 60;