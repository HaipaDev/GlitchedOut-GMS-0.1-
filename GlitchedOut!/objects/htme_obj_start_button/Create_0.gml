/// @description  Initialize button
depth = -1001;
event_inherited();
text = "Start";

readyst1=false;
readyst2=false;
//timer0=-1;
alarm[0]=-1
alarm[1]=0;
notready=false;
notreadysT=0;
readysT=0;
alarmcount=0;

instance_create(x+60, y, htme_obj_readyst1_mark);
instance_create(x+90, y, htme_obj_readyst2_mark);