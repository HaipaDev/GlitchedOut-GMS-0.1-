/// @description  Timer 0 Respawn Player1
timer0-=1;
if(timer0==0){
    with(htme_obj_player1){
        x=random(472);
        y=random(592);
        dead=false;
        hp=maxhp;
    }
}

/// Timer 1 Respawn Player2
timer1-=1;
if(timer1==0){
    with(htme_obj_player2){
        x=random(472);
        y=random(592);
        dead=false;
        hp=maxhp;
    }
}

/// Step Events & SyncIn
with(htme_obj_event_manager){
    if(black_hole==true){
        if(!instance_exists(obj_black_hole))instance_create(240, 288, obj_black_hole);
    }
}


/// Timer 3 Place start HUD
/*timer2-=1;
	if(timer2==0){
	if(room = htme_rm_game){
	    if(!instance_exists(htme_obj_start_hud)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/2, htme_obj_start_hud);
	}
}