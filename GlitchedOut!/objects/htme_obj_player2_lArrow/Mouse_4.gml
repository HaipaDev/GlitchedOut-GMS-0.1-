/// @description  Change image
global.skinP1 = htme_globalGet("skinP1");
//instance_activate_object(htme_obj_player1);
//instance_activate_object(htme_obj_player2);
with(htme_obj_player2choose){
switch(sprite_index) {
    case spr_player7:
        sprite_index = spr_player6;
        with(htme_obj_player2choose) sprite_index = spr_player6; htme_globalSet("skinP2",6,buffer_u8);
        if (global.skinP1 == 6) {sprite_index = spr_player5;
            with(htme_obj_player2choose) sprite_index = spr_player5;
			htme_globalSet("skinP2",5,buffer_u8);}
        //instance_deactivate_object(htme_obj_player1);
        //instance_deactivate_object(htme_obj_player2);
        exit;
    case spr_player6:
        sprite_index = spr_player5;
        with(htme_obj_player2choose) sprite_index = spr_player5; htme_globalSet("skinP2",5,buffer_u8);
        if (global.skinP1 == 5) {sprite_index = spr_player4;
            with(htme_obj_player2choose) sprite_index = spr_player4;
			htme_globalSet("skinP2",4,buffer_u8);}
        //instance_deactivate_object(htme_obj_player1);
        //instance_deactivate_object(htme_obj_player2);
        exit;
    case spr_player5:
        sprite_index = spr_player4;
        with(htme_obj_player2choose) sprite_index = spr_player4; htme_globalSet("skinP2",4,buffer_u8);
        if (global.skinP1 == 4) {sprite_index = spr_player3;
            with(htme_obj_player2choose) sprite_index = spr_player3;
			htme_globalSet("skinP2",3,buffer_u8);}
        //instance_deactivate_object(htme_obj_player1);
        //instance_deactivate_object(htme_obj_player2);
        exit;
    case spr_player4:
        sprite_index = spr_player3;
        with(htme_obj_player2choose) sprite_index = spr_player3; htme_globalSet("skinP2",3,buffer_u8);
        if (global.skinP1 == 3) {sprite_index = spr_player2;
            with(htme_obj_player2choose) sprite_index = spr_player2;
			htme_globalSet("skinP2",2,buffer_u8);}
        //instance_deactivate_object(htme_obj_player1);
        //instance_deactivate_object(htme_obj_player2);
        exit;
    case spr_player3:
        sprite_index = spr_player2;
        with(htme_obj_player2choose) sprite_index = spr_player2; htme_globalSet("skinP2",2,buffer_u8);
        if (global.skinP1 == 2) {sprite_index = spr_player1;
            with(htme_obj_player2choose) sprite_index = spr_player1;
			htme_globalSet("skinP2",1,buffer_u8);}
        //instance_deactivate_object(htme_obj_player1);
        //instance_deactivate_object(htme_obj_player2);
        exit;
    case spr_player2:
        sprite_index = spr_player1;
        with(htme_obj_player2choose) sprite_index = spr_player1; htme_globalSet("skinP2",1,buffer_u8);
        if (global.skinP1 == 1) {sprite_index = spr_player7;
            with(htme_obj_player2choose) sprite_index = spr_player7;
			htme_globalSet("skinP2",7,buffer_u8);}
        //instance_deactivate_object(htme_obj_player1);
        //instance_deactivate_object(htme_obj_player2);
        exit;
    case spr_player1:
        sprite_index = spr_player7;
        with(htme_obj_player2choose) sprite_index = spr_player7; htme_globalSet("skinP2",7,buffer_u8);
        if (global.skinP1 == 7) {sprite_index = spr_player6;
            with(htme_obj_player2choose) sprite_index = spr_player6;
			htme_globalSet("skinP2",6,buffer_u8);}
        //instance_deactivate_object(htme_obj_player1);
        //instance_deactivate_object(htme_obj_player2);
        exit;
        
    }
}

