/// @description  Create pause object
if (room==rm_game) {
    if(!instance_exists(obj_start_hud) and !instance_exists(obj_end_hud)) {
        if(instance_exists(obj_player1) and instance_exists(obj_player2)){
            global.unpaused = false;
            instance_create(0, 0, obj_pause);
            instance_create(room_width/2.1, room_height/2, obj_pause_hud);
            instance_destroy();
        }
    }
}
else if (room==htme_rm_game) {
    if(!instance_exists(htme_obj_start_hud) and !instance_exists(obj_end_hud)) {
        if(instance_exists(htme_obj_player1) and instance_exists(htme_obj_player2)){
            instance_create(0, 0, obj_pause);
            instance_create(room_width/2.1, room_height/2, obj_pause_hud);
            instance_destroy();
        }
    }
}