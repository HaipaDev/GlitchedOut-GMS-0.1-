/// @description  Follow Player 1
if(instance_exists(htme_obj_player1)){
    x=htme_obj_player1.x;
    y=htme_obj_player1.y;
    htme_obj_player1.hp = 100;
} else {
    instance_destroy();
}

