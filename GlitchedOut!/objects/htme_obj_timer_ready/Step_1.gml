/// @description Decrease the time
delete=htme_globalGet("deleteRtimer")
self.time-=1;
if(self.time=0){
    seconds-=1;
    self.time=room_speed;
}
if seconds < 0// checks if seconds is less than 0
{
    seconds = 59;//resest seconds
    minutes -=1;// take one off minutes
}   
//alarm[0]=room_speed;//reset alarm

if(seconds==0){
	instance_destroy();
}

if(delete==true){
	instance_destroy();
}

/// SyncIn
//mp_map_syncIn("time",self.time);
/*mp_map_syncIn("seconds",self.seconds);
mp_map_syncIn("minutes",self.minutes);