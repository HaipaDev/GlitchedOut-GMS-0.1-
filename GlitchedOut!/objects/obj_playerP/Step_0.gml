/// @description  Move and check HP
#region//Movement
/*with(obj_player1){//Player1
if(!instance_exists(obj_end_hud)) state = move_player1();
else state = idle_player();
/*if(perkS1==8 or perkS2==8){
    if(!instance_exists(obj_end_hud)){
        state = move_player1_demon();
    }
}*/
//}
/*with(obj_player2){//Player2
if(!instance_exists(obj_end_hud)) state = move_player2();
else state = idle_player();
/*if(perkS1==8 or perkS2==8){
    if(!instance_exists(obj_end_hud)){
        state = move_player2_demon();
    }
}*/
//}
#endregion

#region//Perks, HP etc
if(hp <= 0) {
    if(perkS1==7 or perkS2==7){
        if(undead==false){
            undead=true;
            hp=25;
            random_teleport_short();
            instance_create(x, y, obj_magiccircle);
            audio_play_sound(snd_undead, 5, false);
            hspd = 5.2;
            vspd = 5;
            rotation_power = 19;
            dmg = random_range(3, 6);
            alarm[4] = room_speed*undead_time;
        } else {
            hp=0;
            dead=true;
			if(alarm[5]>0)deathby="player";
			else{deathby="other"}
            death();
        }
    } else {
        hp=0;
        dead=true;
		if(alarm[5]>0)deathby="player";
		else{deathby="other"}
        death();
    }
}
if(hp > maxhp) {
    hp=maxhp;
}
#endregion

#region//Points
with(obj_player1){
if(points<0)points=0;
if(deathby=="player"){
	with(obj_player2)points+=global.deathKpts;
	if(points>global.deathPpts)points-=global.deathPpts;
	deathby="";
} else if (deathby=="other"){
	if(points>global.deathOpts)points-=global.deathOpts;
	deathby="";
}
}
with(obj_player2){
if(points<0)points=0;
if(deathby=="player"){
	with(obj_player1)points+=global.deathKpts;
	if(points>global.deathPpts)points-=global.deathPpts;
	deathby="";
} else if (deathby=="other"){
	if(points>global.deathOpts)points-=global.deathOpts;
	deathby="";
}
}
#endregion



//Outside dmg
if(outside==true){hp-=0.05;audio_play_sound(snd_tvdistortQ,0,false);}
if((x<room_width and x>0) and (y<room_height and y>0)){outside=false;}
if(instance_exists(obj_end_hud)){outside=false;}

//Respawning effect
if(respawning==true){
	if(image_xscale<1)image_xscale+=0.05;
	if(image_xscale>=1)image_xscale=1;
	if(image_alpha<1)image_alpha+=0.05;
	if(image_alpha>=1)image_alpha=1;color=c_white
}

// Saw 01 particles
if(place_meeting(x, y, obj_saw) and sawtimer==true){
	timerSaw=7;
	sawtimer=false
} else if(!place_meeting(x, y, obj_saw)){
	timerSaw=-1;
	sawtimer=true;
}

if(timerSaw>0)timerSaw-=1;
if(timerSaw==0){
	create_01(x, y);
	sawtimer=true;
}