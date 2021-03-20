/// @description  Follow Player & Disappear
if(instance_exists(obj_player1)) state = move_illusion1();
else {
    create_smoke(x, y);
    instance_destroy();
}

