/// @description  Follow Player & Disappear
if(instance_exists(htme_obj_player1)) state = htme_move_illusion1();
else {
    create_smoke(x, y);
    instance_destroy();
}

