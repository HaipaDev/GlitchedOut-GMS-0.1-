/// @description  Choose event
if(global.events==1){
    randomize();
    
    event_num = choose(1, 2, 3);
    if(event_num==1){
        black_hole = true;
        glitchageddon = false;
        gravity_drag = false;
        event_text = "Black Hole";
        instance_create(240, 288, obj_black_hole);
        alarm[2] = 60;
    } else if(event_num==2){
        black_hole = false;
        glitchageddon = true;
        gravity_drag = false;
        alarm[3] = 1;
        event_text = "Glitchageddon";
        alarm[2] = 60;
    } else if(event_num==3){
        drag_xxP1 = choose(8, 488);
        drag_xxP2 = choose(8, 488);
        black_hole = false;
        glitchageddon = false;
        gravity_drag = true;
        event_text = "Gravity Drag";
        alarm[2] = 60;
    }
    
    alarm[1] = 180;
}

