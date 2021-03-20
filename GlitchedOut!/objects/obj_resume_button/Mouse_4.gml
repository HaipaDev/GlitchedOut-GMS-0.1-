/// @description  Resume game
if(room==rm_game)global.unpaused = true;
if(room==htme_rm_game){
	instance_destroy(obj_pause_hud);
	instance_destroy(htme_obj_disconnect_button);
	instance_destroy();
}