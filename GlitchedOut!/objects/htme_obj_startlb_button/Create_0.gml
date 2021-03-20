/// @description  Initialize button
depth = -1001;
event_inherited();
text = "Ready";

ready1=false;
ready2=false;
//timer0=-1;
alarm[0]=-1
alarm[1]=0;
notready=false;
notreadyT=0;
readyT=0;
alarmcount=0;

instance_create(x+60, y, htme_obj_ready1_mark);
instance_create(x+90, y, htme_obj_ready2_mark);