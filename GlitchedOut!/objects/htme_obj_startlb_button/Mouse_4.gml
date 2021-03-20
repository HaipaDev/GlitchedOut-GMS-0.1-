/// @description Ready
if(htme_isServer()){
	if(notready==false){
		ready1=true;
		notready=true;
		htme_globalSet("ready1",true,buffer_bool);
		text = "Not Ready"
		alarmcount=0;
		htme_globalSet("readyT",1,buffer_u8);
		htme_globalSet("notreadyT",0,buffer_u8);
		/*if(ready1==true){
			htme_globalSet("ready1",false,buffer_bool);
			htme_globalSet("ready1",true,buffer_bool);
		}*/
		//htme_globalSet("alarmcount",0,buffer_bool);
		/*if(!instance_exists(htme_obj_timer_ready))alarmcount=0;
		htme_globalSet("alarmcount",0,buffer_bool);*/
	} else if(notready==true){
		ready1=false;
		notready=false;
		htme_globalSet("ready1",false,buffer_bool);
		text = "Ready"
		alarm[0]=-1;
		alarmcount=2;
		htme_globalSet("notreadyT",1,buffer_u8);
		//htme_globalSet("alarm[0]",-1,buffer_bool);
		//htme_globalSet("alarmcount",2,buffer_bool);
		//instance_destroy(htme_obj_timer_ready);
	}
}
if(!htme_isServer()){
	if(notready==false){
		ready2=true;
		notready=true;
		htme_globalSet("ready2",true,buffer_bool);
		text = "Not Ready"
		alarmcount=0;
		htme_globalSet("readyT",1,buffer_u8);
		htme_globalSet("notreadyT",0,buffer_u8);
		//htme_globalSet("alarmcount",0,buffer_bool);
		//if(!instance_exists(htme_obj_timer_ready))alarmcount=0;
	} else if(notready==true){
		ready2=false;
		notready=false;
		htme_globalSet("ready2",false,buffer_bool);
		text = "Ready"
		alarm[0]=-1;
		alarmcount=2;
		htme_globalSet("notreadyT",1,buffer_u8);
		//htme_globalSet("alarm[0]",-1,buffer_u8);
		/*htme_globalSet("alarmcount",2,buffer_u8);
		instance_destroy(htme_obj_timer_ready);*/
	}
}