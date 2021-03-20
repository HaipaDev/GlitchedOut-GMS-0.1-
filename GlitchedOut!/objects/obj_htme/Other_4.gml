/// @description htme_roomstart(); - Sync current room
/// @function htme_roomstart
if(room==htme_rm_lobby or room==htme_rm_game)htme_roomstart();
if(room==htme_rm_lobbygm){
	htme_globalSet("deleteRtimer",false,buffer_bool);
}
if(room==htme_rm_game){
	alarm[1]=120;
	htme_globalSet("deleteStimer",false,buffer_bool);
}

if(room==rm_menu or room==rm_options){
	instance_destroy();	
}


/*if(room==htme_rm_game){
	buffer_seek(self.buffer, buffer_seek_start, 0);
    buffer_write(self.buffer, buffer_s8, htme_packet.CLIENT_ROOMCHANGE);
    buffer_write(self.buffer, buffer_u16, room);
    htme_sendNewSignedPacket(self.buffer,noone);
    
    htme_forceSyncLocalInstances(self.playerhash);
}