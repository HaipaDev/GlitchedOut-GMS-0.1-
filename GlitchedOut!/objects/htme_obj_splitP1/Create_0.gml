/// @description  Properties
dmg = 3;
image_xscale = .4;
image_yscale = image_xscale;
if(instance_exists(htme_obj_player2))move_towards_point(htme_obj_player2.x, htme_obj_player2.y, 2.9);
if(instance_exists(htme_obj_player1))sprite_index = htme_obj_player1.sprite_index;

mp_sync();

mp_addPosition("Pos",1);
mp_setType("Pos",mp_type.FAST);