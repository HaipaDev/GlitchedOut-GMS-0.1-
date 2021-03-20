/// @description  Step events
if(black_hole == true){
    with(obj_player1)move_towards_point(240, 288, 2.3);
    with(obj_player2)move_towards_point(240, 288, 2.3);
} else if(gravity_drag == true){
    with(obj_player1)move_towards_point(obj_event_manager.drag_xxP1, obj_event_manager.drag_yyP1, 2.4);
    with(obj_player2)move_towards_point(obj_event_manager.drag_xxP2, obj_event_manager.drag_yyP2, 2.4);
} else {
    with(obj_player1){hspeed = 0; vspeed = 0;}
    with(obj_player2){hspeed = 0; vspeed = 0;}
}



