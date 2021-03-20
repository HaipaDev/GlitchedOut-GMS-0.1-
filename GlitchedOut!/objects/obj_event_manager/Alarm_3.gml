/// @description  Glitchageddon
if(glitchageddon == true){
    with(obj_player1)random_teleport_short();
    with(obj_player2)random_teleport_short();
    alarm[3] = 20;
} else {
    alarm[3] = -1;
}

