/// @description  Follow Player & Disappear
if(instance_exists(obj_player2)) state = move_illusion2();
else {
    create_smoke(x, y);
    instance_destroy();
}