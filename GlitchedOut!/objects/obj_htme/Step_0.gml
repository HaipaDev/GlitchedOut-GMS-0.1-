/// @description htme_step(); - Pass step event to the engine
/// @function htme_step
htme_step();
if(alarm[1]==0)stopserver=htme_globalGet("stopserver");
if(stopserver==true){
	htme_serverShutdown();
	room_goto(rm_menu);
}