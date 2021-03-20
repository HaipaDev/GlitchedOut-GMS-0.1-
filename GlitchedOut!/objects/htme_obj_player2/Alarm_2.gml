/// @description Split
if(dead==false){
    if(instance_exists(htme_obj_player1)){
    instance_create(x, y, htme_obj_splitP2);
    instance_create(x+15, y, htme_obj_splitP2);
    instance_create(x-15, y, htme_obj_splitP2);
    }
    alarm[2] = room_speed*random_range(5.7, 8);
}