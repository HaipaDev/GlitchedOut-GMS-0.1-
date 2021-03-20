/// @description Sync In
readyst1 = htme_globalGet("readyst1")
readyst2 = htme_globalGet("readyst2")
notreadysT = htme_globalGet("notreadysT")
readysT = htme_globalGet("readysT")
//alarm[0] = htme_globalGet("alarm[0]")
//alarmcount = htme_globalGet("alarmcount")


/*if(ready1==false or ready2==false){
	instance_destroy(htme_obj_timer_ready);
}*/
if(notreadysT==1){
	instance_destroy(htme_obj_timer_start);
	alarmcount=2;
	alarm[0]=-1;
	//htme_globalSet("notreadyT",0,buffer_bool);
}
if(readysT==1){
	alarmcount=0;
	readysT=0;
	htme_globalSet("readysT",0,buffer_u8);
}
if(readyst1==true and readyst2==true and alarmcount==0){
	alarmcount=1;
}
if(readyst1==true and readyst2==false){
	alarmcount=0;
	//instance_destroy(htme_obj_timer_start);
	//alarm[0]=-1;
} else if(readyst1==false and readyst2==true){
	alarmcount=0;
	//instance_destroy(htme_obj_timer_start);
	//alarm[0]=-1;
}
if(alarmcount==1){
	instance_create(x, y-39, htme_obj_timer_start);
	alarm[0]=60*5;
	alarmcount=2;
}
/*timer0-=1;
if(timer0==0){
	
}