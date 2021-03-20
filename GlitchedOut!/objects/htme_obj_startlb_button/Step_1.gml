/// @description Sync In
ready1 = htme_globalGet("ready1")
ready2 = htme_globalGet("ready2")
notreadyT = htme_globalGet("notreadyT")
readyT = htme_globalGet("readyT")
//alarm[0] = htme_globalGet("alarm[0]")
//alarmcount = htme_globalGet("alarmcount")


/*if(ready1==false or ready2==false){
	instance_destroy(htme_obj_timer_ready);
}*/
if(notreadyT==1){
	instance_destroy(htme_obj_timer_ready);
	alarmcount=2;
	alarm[0]=-1;
	//htme_globalSet("notreadyT",0,buffer_bool);
}
if(readyT==1){
	alarmcount=0;
	readyT=0;
	htme_globalSet("readyT",0,buffer_u8);
}
if(ready1==true and ready2==true and alarmcount==0){
	alarmcount=1;
}
if(ready1==true and ready2==false){
	alarmcount=0;
} else if(ready1==false and ready2==true){
	alarmcount=0;
}
if(ready1==true and ready2==true and alarmcount==0){
	alarmcount=1;
}
if(alarmcount==1){
	instance_create(x, y-39, htme_obj_timer_ready);
	alarm[0]=60*5;
	alarmcount=2;
}
/*timer0-=1;
if(timer0==0){
	
}