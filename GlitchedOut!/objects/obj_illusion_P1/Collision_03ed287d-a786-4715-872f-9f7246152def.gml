/// @description  Disappear
create_smoke(x, y);
instance_destroy();
add_screenshake(2, room_speed*.115);
with(obj_player1) alarm[3] = 330;

