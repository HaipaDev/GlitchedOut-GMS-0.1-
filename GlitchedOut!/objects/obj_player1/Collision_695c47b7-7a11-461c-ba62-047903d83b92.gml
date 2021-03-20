/// @description  Random Teleport and damage
if(!instance_exists(obj_shieldP1))random_teleport();
if(instance_exists(obj_shieldP1) and instance_exists(obj_shieldP2)){
	random_teleport_long();
	with(obj_shieldP1){instance_destroy();}with(obj_shieldP2){instance_destroy();}
}
moving = keyboard_check(ord("W")) or keyboard_check(ord("S")) or keyboard_check(ord("A")) or keyboard_check(ord("D"));
black_hole_active = obj_event_manager.black_hole==true;
if(perkS1!=3 and perkS2!=3) dmg = random_range(dmin, dmax);//Random damage
if(perkS1==3 or perkS2==3) dmg = random_range(dmin3, dmax3);
if (moving){
	with(other){
	hp -= obj_player1.dmg*prot_mult;
	alarm[5]=room_speed*assist_timer;}}
if (black_hole_active)with(other) hp -= 2;

// Damage effects
create_01(x, y);
add_screenshake(6, room_speed*.130);
audio_play_sound(snd_glitch, 1, false);

// Reset regen perk
alarm[0] = room_speed*regen_delay;