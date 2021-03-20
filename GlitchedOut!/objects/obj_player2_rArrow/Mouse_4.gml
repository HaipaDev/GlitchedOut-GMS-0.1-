/// @description  Change image
instance_activate_object(obj_player1);
instance_activate_object(obj_player2);
with(obj_player2){
switch(sprite_index) {
    case spr_player2:
        sprite_index = spr_player3;
        with(obj_player2choose) sprite_index = spr_player3;
        if (obj_player1.sprite_index == spr_player3) {sprite_index = spr_player4;
            with(obj_player2choose) sprite_index = spr_player4;}
        instance_deactivate_object(obj_player1);
        instance_deactivate_object(obj_player2);
        exit;
    case spr_player3:
        sprite_index = spr_player4;
        with(obj_player2choose) sprite_index = spr_player4;
        if (obj_player1.sprite_index == spr_player4) {sprite_index = spr_player5;
            with(obj_player2choose) sprite_index = spr_player5;}
        instance_deactivate_object(obj_player1);
        instance_deactivate_object(obj_player2);
        exit;
    case spr_player4:
        sprite_index = spr_player5;
        with(obj_player2choose) sprite_index = spr_player5;
        if (obj_player1.sprite_index == spr_player5) {sprite_index = spr_player6;
            with(obj_player2choose) sprite_index = spr_player6;}
        instance_deactivate_object(obj_player1);
        instance_deactivate_object(obj_player2);
        exit;
    case spr_player5:
        sprite_index = spr_player6;
        with(obj_player2choose) sprite_index = spr_player6;
        if (obj_player1.sprite_index == spr_player6) {sprite_index = spr_player7;
            with(obj_player2choose) sprite_index = spr_player7;}
        instance_deactivate_object(obj_player1);
        instance_deactivate_object(obj_player2);
        exit;
    case spr_player6:
        sprite_index = spr_player7;
        with(obj_player2choose) sprite_index = spr_player7;
        if (obj_player1.sprite_index == spr_player7) {sprite_index = spr_player1;
            with(obj_player2choose) sprite_index = spr_player1;}
        instance_deactivate_object(obj_player1);
        instance_deactivate_object(obj_player2);
        exit;
    case spr_player7:
        sprite_index = spr_player1;
        with(obj_player2choose) sprite_index = spr_player1;
        if (obj_player1.sprite_index == spr_player1) {sprite_index = spr_player2;
            with(obj_player2choose) sprite_index = spr_player2;}
        instance_deactivate_object(obj_player1);
        instance_deactivate_object(obj_player2);
        exit;
    case spr_player1:
        sprite_index = spr_player2;
        with(obj_player2choose) sprite_index = spr_player2;
        if (obj_player1.sprite_index == spr_player2) {sprite_index = spr_player3;
            with(obj_player2choose) sprite_index = spr_player3;}
        instance_deactivate_object(obj_player1);
        instance_deactivate_object(obj_player2);
        exit;
        
    }
}







