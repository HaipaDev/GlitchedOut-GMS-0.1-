/// @description  Properties
vspd = 3.5;
hspd = 4;
rotation_power = 20;
if(instance_exists(obj_player2)){
    sprite_index = obj_player2.sprite_index;
    state = move_illusion2();
    vspd = obj_player2.vspd;
    hspd = obj_player2.hspd;
    rotation_power = obj_player2.rotation_power;
}
alarm[0] = -1;
alarm[1] = -1;

