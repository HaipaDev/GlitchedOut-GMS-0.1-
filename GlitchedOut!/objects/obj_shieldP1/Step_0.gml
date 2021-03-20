/// @description Follow Player 1
if(instance_exists(obj_player1)){
    x=obj_player1.x;
    y=obj_player1.y;
} else {
    instance_destroy();
}