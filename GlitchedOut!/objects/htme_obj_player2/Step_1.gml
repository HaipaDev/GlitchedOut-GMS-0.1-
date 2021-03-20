/// @description  Step Events
/*timer0-=1;
if(timer0==0){
    if(perkS1==2 or perkS2==2) {
        if(hp<maxhp){
            if(dead==false){
                hp+=1;
                audio_play_sound(snd_heal, 0, false);
            }
        }
        timer0 = room_speed*.68;
    }
}

/// Timer 1 Unstable perk
timer1-=1;
if(timer1==0){
    if(dead==false){
        random_teleport();
        hp-=random_range(1, 3);
        add_screenshake(5, room_speed*.120);
        audio_play_sound(snd_glitch, 0, false);
        timer1 = room_speed*random_range(4, 8);
        // Reset regen perk
        timer0 = room_speed*2;
    }
}

/// Timer 2 Split
timer2-=1;
if(timer2==0){
    if(dead==false){
        if(instance_exists(obj_player2)){
        instance_create(x, y, obj_splitP1);
        instance_create(x+15, y, obj_splitP1);
        instance_create(x-15, y, obj_splitP1);
        }
        timer2 = room_speed*random_range(5.7, 8);
    }
}

/// Timer 3 Recreate illusion
timer3-=1;
if(timer3==0){
    if(!instance_exists(obj_illusion_P1)){
        if(dead==false){
            with(obj_player1) create_smoke_big(x, y);
            audio_play_sound(snd_illusion, 4, false);
            instance_create(obj_player1.x+random_range(30,50), obj_player1.y+random_range(30,50), obj_illusion_P1);
            instance_create(obj_player1.x+random_range(-30,-50), obj_player1.y+random_range(30,50), obj_illusion_P1);
            instance_create(obj_player1.x+random_range(30,50), obj_player1.y+random_range(-30,-50), obj_illusion_P1);
            instance_create(obj_player1.x+random_range(-30,-50), obj_player1.y+random_range(-30,-50), obj_illusion_P1);
        }
    }
}

/// Timer 4 Undead dead
timer4-=1;
if(timer4==0){
    dead=true;
    deaths+=1;
    undead=false;
    death();
    timer4=-1;
    if(perkS1==1 or perkS2==1) {
        vspd = 2.6;
        hspd = 2.35;
        rotation_power = 12;
        hp = 115;
        maxhp = 115;
    }
}*/

/// Collisions
// Player
/*if(place_meeting(x, y, htme_obj_player1)){
    random_teleport();
    moving = keyboard_check(ord("W")) or keyboard_check(ord("S")) or keyboard_check(ord("A")) or keyboard_check(ord("D"));
    black_hole_active = htme_obj_event_manager.black_hole==true;
    if (moving)htme_obj_player1.hp -= self.dmg;
    if (black_hole_active)with(other) hp -= 2;
    
    // Damage effects
    create_blood(x, y);
    add_screenshake(6, room_speed*.130);
    audio_play_sound(snd_glitch, 1, false);
    
    // Reset regen perk
    timer0 = room_speed*3.5;
    
    // Randomize
    randomize();
}
// Saw
if(place_meeting(x, y, obj_saw)){
    self.hp -= obj_saw.dmg;
    create_blood(x, y);
    add_screenshake(3, room_speed*.115);
    audio_play_sound(snd_saw, 1, false);
    
    // Reset regen perk
    timer0 = room_speed*3.5;
}


/* */
/// Move, check HP & SyncIn
if (htme_isLocal()) {
if(!instance_exists(obj_end_hud) and !instance_exists(htme_obj_start_hud)) state = move_player1();
if(instance_exists(obj_end_hud) and instance_exists(htme_obj_start_hud)) state = idle_player();
if(dead==true) state = idle_player();

if(perkS1==8 or perkS2==8){
    if(!instance_exists(obj_end_hud) and !instance_exists(htme_obj_start_hud)){
        state = move_player1_demon();
    }
}
    
    
    if(hp <= 0) {
        if(perkS1==7 or perkS2==7){
            if(undead==false){
                undead=true;
                hp=25;
                random_teleport_short();
                instance_create(x, y, htme_obj_magiccircle);
                audio_play_sound(snd_undead, 5, false);
                hspd = 5.2;
                vspd = 5;
                rotation_power = 19;
                dmg = random_range(3, 6);
                timer4 = 5.6;
            } else {
                deaths+=1;
                dead=true;
                death();
                hp=1;
            }
        } else {
            deaths+=1;
            dead=true;
            death();
            hp=1;
        }
    }
    if(hp > maxhp) {
        hp=100;
    }
}

// Saw 01 particles
if(place_meeting(x, y, obj_saw) and sawtimer==true){
	timerSaw=7;
	sawtimer=false
} else if(!place_meeting(x, y, obj_saw)){
	timerSaw=-1;
	sawtimer=true;
}

if(timerSaw>0)timerSaw-=1;
if(timerSaw==0){
	create_01(x, y);
	sawtimer=true;
}

// SyncIn
mp_map_syncIn("name",self.name);
mp_map_syncIn("image_angle",self.image_angle);
//mp_map_syncIn("hp",self.hp);
mp_map_syncIn("maxhp",self.maxhp);
//mp_map_syncIn("dmg",self.dmg);
mp_map_syncIn("deaths",self.deaths);
mp_map_syncIn("undead",self.undead);
mp_map_syncIn("pressed_up",self.pressed_up);
mp_map_syncIn("pressed_down",self.pressed_down);
mp_map_syncIn("pressed_left",self.pressed_left);
mp_map_syncIn("pressed_right",self.pressed_right);
//mp_map_syncIn("moving",self.moving);
mp_map_syncIn("state",self.state);
//mp_map_syncIn("sprite_index",self.sprite_index);

/* */
/*  */
