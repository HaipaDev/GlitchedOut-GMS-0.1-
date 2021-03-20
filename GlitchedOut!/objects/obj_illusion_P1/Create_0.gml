/// @description  Properties
vspd = 3.5;
hspd = 4;
rotation_power = 20;
if(instance_exists(obj_player1)){
    sprite_index = obj_player1.sprite_index;
    state = move_illusion1();
    vspd = obj_player1.vspd;
    hspd = obj_player1.hspd;
    rotation_power = obj_player1.rotation_power;
}
alarm[0] = -1;
alarm[1] = -1;

