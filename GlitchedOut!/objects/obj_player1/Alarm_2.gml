/// @description  Split
if(instance_exists(obj_player2)){
instance_create(x, y, obj_splitP1);
instance_create(x+15, y, obj_splitP1);
instance_create(x-15, y, obj_splitP1);
}
alarm[2] = room_speed*random_range(5.7, 8);

