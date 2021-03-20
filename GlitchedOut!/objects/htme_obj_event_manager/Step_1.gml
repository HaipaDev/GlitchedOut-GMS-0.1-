/// @description  Timer 0 Choose event
timer0-=1;
if(timer0==0){
    if(global.events==true){
        if(htme_isLocal()){
            randomize();
            
            event_num = choose(1, 2, 3);
            if(event_num==1){
                black_hole = true;
                glitchageddon = false;
                gravity_drag = false;
                event_text = "Black Hole";
                instance_create(240, 288, obj_black_hole);
                timer2 = 60;
            } else if(event_num==2){
                black_hole = false;
                glitchageddon = true;
                gravity_drag = false;
                timer3 = 1;
                event_text = "Glitchageddon";
                timer2 = 60;
            } else if(event_num==3){
                drag_xxP1 = choose(8, 488);
                drag_xxP2 = choose(8, 488);
                black_hole = false;
                glitchageddon = false;
                gravity_drag = true;
                event_text = "Gravity Drag";
                timer2 = 60;
            }
            
            timer1 = 180;
        }
    }
}

/// Timer 1 Stop on nothing
timer1-=1;
if(timer1==0){
    //if(htme_isLocal()){
        black_hole = false;
        if(instance_exists(obj_black_hole)) instance_destroy(obj_black_hole);
        glitchageddon = false;
        gravity_drag = false;
        event_text = "Nothing";
        timer2 = 60;
        timer0 = 300;
    //}
}

/// Timer 2 Erase text
timer2-=1;
if(timer2==0){
    if(htme_isLocal()){
        event_text = "";
    }
}

/// Timer 3 Glitchageddon
timer3-=1;
if(timer3==0){
    //if(htme_isLocal()){
        if(glitchageddon == true){
            with(htme_obj_player1)random_teleport_short();
            with(htme_obj_player2)random_teleport_short();
            timer3 = 20;
        } else {
            timer3 = -1;
        }
    //}
}

/// Step events and SyncIn
if(black_hole == true){
    with(htme_obj_player1)move_towards_point(240, 288, 2.3);
    with(htme_obj_player2)move_towards_point(240, 288, 2.3);
} else if(gravity_drag == true){
    with(htme_obj_player1)move_towards_point(htme_obj_event_manager.drag_xxP1, htme_obj_event_manager.drag_yyP1, 2.4);
    with(htme_obj_player2)move_towards_point(htme_obj_event_manager.drag_xxP2, htme_obj_event_manager.drag_yyP2, 2.4);
} else {
    with(htme_obj_player1){hspeed = 0; vspeed = 0;}
    with(htme_obj_player2){hspeed = 0; vspeed = 0;}
}
mp_map_syncIn("timer0",self.timer0);
mp_map_syncIn("timer1",self.timer1);
mp_map_syncIn("timer2",self.timer2);
mp_map_syncIn("timer3",self.timer3);
mp_map_syncIn("black_hole",self.black_hole);
mp_map_syncIn("glitchageddon",self.glitchageddon);
mp_map_syncIn("gravity_drag",self.gravity_drag);
mp_map_syncIn("event_num",self.event_num);
mp_map_syncIn("event_text",self.event_text);
mp_map_syncIn("drag_yyP1",self.drag_yyP1);
mp_map_syncIn("drag_yyP2",self.drag_yyP2);
mp_map_syncIn("drag_xxP1",self.drag_xxP1);
mp_map_syncIn("drag_xxP2",self.drag_xxP2);

