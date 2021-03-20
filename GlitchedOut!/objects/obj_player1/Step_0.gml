/// @description Move, HP etc
if(!instance_exists(obj_end_hud) and dead==false) state = move_player1();
if(instance_exists(obj_end_hud)) state = idle_player();
if(dead==true) state = idle_player();
/*if(perkS1==8 or perkS2==8){
    if(!instance_exists(obj_end_hud)){
        state = move_player1_demon();
    }
}*/

event_inherited();