/// @description Ready
if(htme_isServer()){
	if(notready==false){
		readyst1=true;
		notready=true;
		htme_globalSet("readyst1",true,buffer_bool);
		text = "Stop"
		alarmcount=0;
		htme_globalSet("readysT",1,buffer_u8);
		htme_globalSet("notreadysT",0,buffer_u8);
		//htme_globalSet("alarmcount",0,buffer_bool);
		/*if(!instance_exists(htme_obj_timer_ready))alarmcount=0;
		htme_globalSet("alarmcount",0,buffer_bool);*/
	} else if(notready==true){
		readyst1=false;
		notready=false;
		htme_globalSet("readyst1",false,buffer_bool);
		text = "Start"
		alarm[0]=-1;
		alarmcount=2;
		htme_globalSet("notreadysT",1,buffer_u8);
		//htme_globalSet("alarm[0]",-1,buffer_bool);
		//htme_globalSet("alarmcount",2,buffer_bool);
		//instance_destroy(htme_obj_timer_start);
	}
}
if(!htme_isServer()){
	if(notready==false){
		readyst2=true;
		notready=true;
		htme_globalSet("readyst2",true,buffer_bool);
		text = "Stop"
		alarmcount=0;
		htme_globalSet("readysT",1,buffer_u8);
		htme_globalSet("notreadysT",0,buffer_u8);
		//htme_globalSet("alarmcount",0,buffer_bool);
		//if(!instance_exists(htme_obj_timer_ready))alarmcount=0;
	} else if(notready==true){
		ready2=false;
		notready=false;
		htme_globalSet("readyst2",false,buffer_bool);
		text = "Start"
		alarm[0]=-1;
		alarmcount=2;
		htme_globalSet("notreadysT",1,buffer_u8);
		//htme_globalSet("alarm[0]",-1,buffer_u8);
		/*htme_globalSet("alarmcount",2,buffer_u8);
		instance_destroy(htme_obj_timer_start);*/
	}
}