/// @description  Follow Player 2
if(instance_exists(htme_obj_player2)){
    x=htme_obj_player2.x;
    y=htme_obj_player2.y;
    htme_obj_player2.hp = 100;
} else {
    instance_destroy();
}

