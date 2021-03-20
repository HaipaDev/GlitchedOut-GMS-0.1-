/// @description  Set Perks and Delete start HUD
randomize();
instance_activate_object(obj_player1);
instance_activate_object(obj_player2);
with(obj_player1)starting_perks();
with(obj_player2)starting_perks();
#region//Perks
// Player1 Slot1
with(obj_player1_perk1){
    switch(sprite_index) {
        case spr_perk1: {
            with(obj_player1)perkS1 = 1; break;
        } case spr_perk2: {
            with(obj_player1)perkS1 = 2; break;
        } case spr_perk3: {
            with(obj_player1)perkS1 = 3; break;
        } case spr_perk4: {
            with(obj_player1)perkS1 = 4; break;
        } case spr_perk5: {
            with(obj_player1)perkS1 = 5; break;
        } case spr_perk6: {
            with(obj_player1)perkS1 = 6; break;
        } case spr_perk7: {
            with(obj_player1)perkS1 = 7; break;
        } case spr_perk8: {
            with(obj_player1)perkS1 = 8; break;
        }
    }
}

// Player1 Slot2
with(obj_player1_perk2){
    switch(sprite_index) {
        case spr_perk1: {
            with(obj_player1)perkS2 = 1; break;
        } case spr_perk2: {
            with(obj_player1)perkS2 = 2; break;
        } case spr_perk3: {
            with(obj_player1)perkS2 = 3; break;
        } case spr_perk4: {
            with(obj_player1)perkS2 = 4; break;
        } case spr_perk5: {
            with(obj_player1)perkS2 = 5; break;
        } case spr_perk6: {
            with(obj_player1)perkS2 = 6; break;
        } case spr_perk7: {
            with(obj_player1)perkS2 = 7; break;
        } case spr_perk8: {
            with(obj_player1)perkS2 = 8; break;
        }
    }
}
// Player2 Slot1
with(obj_player2_perk1){
    switch(sprite_index) {
        case spr_perk1: {
            with(obj_player2)perkS1 = 1; break;
        } case spr_perk2: {
            with(obj_player2)perkS1 = 2; break;
        } case spr_perk3: {
            with(obj_player2)perkS1 = 3; break;
        } case spr_perk4: {
            with(obj_player2)perkS1 = 4; break;
        } case spr_perk5: {
            with(obj_player2)perkS1 = 5; break;
        } case spr_perk6: {
            with(obj_player2)perkS1 = 6; break;
        } case spr_perk7: {
            with(obj_player2)perkS1 = 7; break;
        } case spr_perk8: {
            with(obj_player2)perkS1 = 8; break;
        }
    }
}
// Player2 Slot2
with(obj_player2_perk2){
    switch(sprite_index) {
        case spr_perk1: {
            with(obj_player2)perkS2 = 1; break;
        } case spr_perk2: {
            with(obj_player2)perkS2 = 2; break;
        } case spr_perk3: {
            with(obj_player2)perkS2 = 3; break;
        } case spr_perk4: {
            with(obj_player2)perkS2 = 4; break;
        } case spr_perk5: {
            with(obj_player2)perkS2 = 5; break;
        } case spr_perk6: {
            with(obj_player2)perkS2 = 6; break;
        } case spr_perk7: {
            with(obj_player2)perkS2 = 7; break;
        } case spr_perk8: {
            with(obj_player2)perkS2 = 8; break;
        }
    }
}
#endregion
#region// Delete start HUD
instance_activate_object(obj_saw);
instance_activate_object(obj_laser_emitterR);
instance_activate_object(obj_laser_emitterL);
instance_activate_object(obj_laserR);
instance_activate_object(obj_laserL);
instance_activate_object(obj_event_manager);
instance_activate_object(obj_healthPack);
instance_activate_object(obj_timer_minutes);
with(obj_start_hud) instance_destroy();
with(obj_menu_button) instance_destroy();
with(obj_player1controls) instance_destroy();
with(obj_player1choose) instance_destroy();
with(obj_player1_rArrow) instance_destroy();
with(obj_player1_lArrow) instance_destroy();
with(obj_player2controls) instance_destroy();
with(obj_player2choose) instance_destroy();
with(obj_player2_rArrow) instance_destroy();
with(obj_player2_lArrow) instance_destroy();
with(obj_player1_perk1) instance_destroy();
with(obj_player1_perk2) instance_destroy();
with(obj_player2_perk1) instance_destroy();
with(obj_player2_perk2) instance_destroy();
with(obj_timechoose_text) instance_destroy();
with(obj_time_rArrow) instance_destroy();
with(obj_time_lArrow) instance_destroy();
with(obj_events_button) instance_destroy();

instance_destroy();
#endregion