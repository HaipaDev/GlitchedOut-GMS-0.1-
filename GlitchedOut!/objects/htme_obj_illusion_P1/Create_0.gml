/// @description  Properties
vspd = 3.5;
hspd = 4;
rotation_power = 20;
if(instance_exists(htme_obj_player1)){
    sprite_index = htme_obj_player1.sprite_index;
    state = htme_move_illusion1();
    vspd = htme_obj_player1.vspd;
    hspd = htme_obj_player1.hspd;
    rotation_power = htme_obj_player1.rotation_power;
}
alarm[0] = -1;
alarm[1] = -1;

mp_sync();

mp_addPosition("Pos",1);
mp_setType("Pos",mp_type.FAST);

mp_add("illusionAngle","image_angle",buffer_string,1);
mp_setType("illusionAngle",mp_type.FAST);

mp_addBuiltinBasic("basicDrawing",room_speed);
mp_setType("basicDrawing",mp_type.SMART);