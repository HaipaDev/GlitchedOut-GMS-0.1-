/// @description  Synchronize with engine
mp_sync();
//mp_stayAlive();

mp_addPosition("Pos",1);
mp_setType("Pos",mp_type.FAST);

mp_add("playerAngle","image_angle",buffer_string,1);
mp_setType("playerAngle",mp_type.FAST);

//mp_add("player","hp",buffer_u8,1);
mp_add("player","maxhp",buffer_u8,3*room_speed);
//mp_add("player","dmg",buffer_u8,1);
mp_add("player","deaths",buffer_u8,room_speed);
mp_add("player","undead",buffer_bool,2);
mp_add("player","pressed_up",buffer_bool,1);
mp_add("player","pressed_down",buffer_bool,1);
mp_add("player","pressed_left",buffer_bool,1);
mp_add("player","pressed_right",buffer_bool,1);
//mp_add("player","moving",buffer_bool,1);
mp_add("player","state",buffer_bool,1);
//mp_add("player","sprite_index",buffer_string,room_speed*5);
mp_setType("player",mp_type.SMART);

mp_addBuiltinBasic("basicDrawing",room_speed);
mp_setType("basicDrawing",mp_type.SMART);

mp_add("playerName","name",buffer_string,60*room_speed);
mp_setType("playerName",mp_type.SMART);

mp_add("controls","pressed_up,pressed_down,pressed_left,pressed_right",buffer_bool,1);

/// Properties
hp = 100;
maxhp = hp;
vspd = 3.55;
hspd = 3.9;
rotation_power = 20;
dmg = random_range(2, 5);
state = move_player1();
perkS1 = -1;
perkS2 = -1;
dead = false;
undead = false;
deaths = 0;
name = "Player 2"
pressed_up = keyboard_check(ord("W"));
pressed_down = keyboard_check(ord("S"));
pressed_left = keyboard_check(ord("A"));
pressed_right = keyboard_check(ord("D"));
self.moving = pressed_up or pressed_down or pressed_left or pressed_right;
//moving = keyboard_check(vk_up) or keyboard_check(vk_down) or keyboard_check(vk_left) or keyboard_check(vk_right);
timerSaw=-1;
sawtimer=true;