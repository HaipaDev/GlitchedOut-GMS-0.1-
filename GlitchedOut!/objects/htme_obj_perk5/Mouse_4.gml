/// @description  Change image dependent on who choose it
if(global.perkS1player1 == 1){
    instance_activate_object(htme_obj_player1_perk2);
    with(htme_obj_player1_perk2){
        instance_activate_object(htme_obj_player1_perk1);
        with(htme_obj_player1_perk1)sprite_index = spr_perk5;
    }
    global.perkS1player1 = -1;
    }
else if(global.perkS2player1 == 1){
    with(htme_obj_player1_perk1){
        instance_activate_object(htme_obj_player1_perk2);
        with(htme_obj_player1_perk2)sprite_index = spr_perk5;
    }
    global.perkS2player1 = -1;
}
// Player 2
if(global.perkS1player2 == 1){
    with(htme_obj_player2_perk2){
        instance_activate_object(htme_obj_player2_perk1);
        with(htme_obj_player2_perk1)sprite_index = spr_perk5;
    }
    global.perkS1player2 = -1;
    }
else if(global.perkS2player2 == 1){
    with(htme_obj_player2_perk1){
        instance_activate_object(htme_obj_player2_perk2);
        with(htme_obj_player2_perk2)sprite_index = spr_perk5;
    }
    global.perkS2player2 = -1;
}
obj_perkMenu_controller.alarm[0] = 5;
with(htme_obj_perk_hud)instance_destroy();
with(htme_obj_perk0)instance_destroy();
with(htme_obj_perk1)instance_destroy();
with(htme_obj_perk2)instance_destroy();
with(htme_obj_perk3)instance_destroy();
with(htme_obj_perk4)instance_destroy();
with(htme_obj_perk5)instance_destroy();
with(htme_obj_perk6)instance_destroy();
with(htme_obj_perk7)instance_destroy();
with(htme_obj_perk8)instance_destroy();
with(htme_obj_closePerks_button)instance_destroy();