/// @description Shake
if(room = rm_options){
    add_screenshake(1, room_speed*.09);
}
if(room = htme_rm_lobby){
    add_screenshake(1, room_speed*.09);
}
if(room = rm_game) {
    if(instance_exists(obj_start_hud)){
        add_screenshake(1, room_speed*.09);
    }
}
alarm[2] = room_speed*1.02;