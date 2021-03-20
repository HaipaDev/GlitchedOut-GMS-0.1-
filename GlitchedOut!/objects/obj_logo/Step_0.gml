/// @description  Stop animation and vibrate
if(image_index > 4.8) {
    image_speed = 0;
    image_index = 0;
    alarm[0] = room_speed*1.75;
}

// Vibrate if not in loading screen
if(room!=rm_loading){
    if(image_index > 2.8 and image_index < 3.2){
        add_screenshake(2, room_speed*.120);
    }
    if(image_index > 4.8) {
        add_screenshake(2, room_speed*.120);
    }
}

