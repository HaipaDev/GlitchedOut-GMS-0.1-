/// @description Set Perks and Delete start HUD
//if(htme_isLocal){
randomize();
instance_activate_object(htme_obj_player1);
instance_activate_object(htme_obj_player2);
// Player1 Slot1
with(htme_obj_player1_perk1){
    switch(sprite_index) {
        case spr_perk1: {
            with(htme_obj_player1)perkS1 = 1; break;
        } case spr_perk2: {
            with(htme_obj_player1)perkS1 = 2; break;
        } case spr_perk3: {
            with(htme_obj_player1)perkS1 = 3; break;
        } case spr_perk4: {
            with(htme_obj_player1)perkS1 = 4; break;
        } case spr_perk5: {
            with(htme_obj_player1)perkS1 = 5; break;
        } case spr_perk6: {
            with(htme_obj_player1)perkS1 = 6; break;
        } case spr_perk7: {
            with(htme_obj_player1)perkS1 = 7; break;
        } case spr_perk8: {
            with(htme_obj_player1)perkS1 = 8; break;
        }
    }
}

// Player1 Slot2
with(htme_obj_player1_perk2){
    switch(sprite_index) {
        case spr_perk1: {
            with(htme_obj_player1)perkS2 = 1; break;
        } case spr_perk2: {
            with(htme_obj_player1)perkS2 = 2; break;
        } case spr_perk3: {
            with(htme_obj_player1)perkS2 = 3; break;
        } case spr_perk4: {
            with(htme_obj_player1)perkS2 = 4; break;
        } case spr_perk5: {
            with(htme_obj_player1)perkS2 = 5; break;
        } case spr_perk6: {
            with(htme_obj_player1)perkS2 = 6; break;
        } case spr_perk7: {
            with(htme_obj_player1)perkS2 = 7; break;
        } case spr_perk8: {
            with(htme_obj_player1)perkS2 = 8; break;
        }
    }
}
// Player2 Slot1
with(htme_obj_player2_perk1){
    switch(sprite_index) {
        case spr_perk1: {
            with(htme_obj_player2)perkS1 = 1; break;
        } case spr_perk2: {
            with(htme_obj_player2)perkS1 = 2; break;
        } case spr_perk3: {
            with(htme_obj_player2)perkS1 = 3; break;
        } case spr_perk4: {
            with(htme_obj_player2)perkS1 = 4; break;
        } case spr_perk5: {
            with(htme_obj_player2)perkS1 = 5; break;
        } case spr_perk6: {
            with(htme_obj_player2)perkS1 = 6; break;
        } case spr_perk7: {
            with(htme_obj_player2)perkS1 = 7; break;
        } case spr_perk8: {
            with(htme_obj_player2)perkS1 = 8; break;
        }
    }
}
// Player2 Slot2
with(htme_obj_player2_perk2){
    switch(sprite_index) {
        case spr_perk1: {
            with(htme_obj_player2)perkS2 = 1; break;
        } case spr_perk2: {
            with(htme_obj_player2)perkS2 = 2; break;
        } case spr_perk3: {
            with(htme_obj_player2)perkS2 = 3; break;
        } case spr_perk4: {
            with(htme_obj_player2)perkS2 = 4; break;
        } case spr_perk5: {
            with(htme_obj_player2)perkS2 = 5; break;
        } case spr_perk6: {
            with(htme_obj_player2)perkS2 = 6; break;
        } case spr_perk7: {
            with(htme_obj_player2)perkS2 = 7; break;
        } case spr_perk8: {
            with(htme_obj_player2)perkS2 = 8; break;
        }
    }
}

with(htme_obj_player1){
	htme_starting_perks();
	x=224;
	y=584;
}
with(htme_obj_player2){
	htme_starting_perks();
	x=224;
	y=24;
}

// Start things, timer, medkit
if(htme_isServer()){
	instance_create(56, 0, htme_obj_timer_minutes);
	//instance_create(56, 0, htme_obj_event_manager);
}
htme_globalSet("medkit_reset",1,buffer_u8);
// Delete start HUD
instance_activate_object(obj_saw);
instance_activate_object(htme_obj_laser_emitterR);
instance_activate_object(htme_obj_laser_emitterL);
instance_activate_object(htme_obj_laserR);
instance_activate_object(htme_obj_laserL);
instance_activate_object(htme_obj_event_manager);
instance_activate_object(htme_obj_healthPack);
instance_activate_object(htme_obj_timer_minutes);
with(htme_obj_start_hud) instance_destroy();
with(htme_obj_menu_button) instance_destroy();
with(htme_obj_player1choose) instance_destroy();
with(htme_obj_player1_rArrow) instance_destroy();
with(htme_obj_player1_lArrow) instance_destroy();
with(htme_obj_player2choose) instance_destroy();
with(htme_obj_player2_rArrow) instance_destroy();
with(htme_obj_player2_lArrow) instance_destroy();
with(htme_obj_player1_perk1) instance_destroy();
with(htme_obj_player1_perk2) instance_destroy();
with(htme_obj_player2_perk1) instance_destroy();
with(htme_obj_player2_perk2) instance_destroy();
with(htme_obj_timechoose_text) instance_destroy();
with(htme_obj_time_rArrow) instance_destroy();
with(htme_obj_time_lArrow) instance_destroy();
with(htme_obj_events_button) instance_destroy();
instance_destroy(htme_obj_readyst1_mark);
instance_destroy(htme_obj_readyst2_mark);

instance_destroy();
//}