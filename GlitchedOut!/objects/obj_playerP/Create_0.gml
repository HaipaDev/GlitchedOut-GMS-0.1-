/// @description  Properties
hp = 100;
maxhp = hp;
alarm[0] = -1;
alarm[1] = -1;
alarm[2] = -1;
alarm[3] = -1;
alarm[4] = -1;
alarm[5] = -1;
vspd = 3.55;
hspd = 3.9;
rotation_power = 20;

dmin=2;sdmin=dmin;
dmax=5;sdmax=dmax;
dmin3=3;
dmax3=6;
dmg = random_range(dmin, dmax);
prot_mult=1;
sprmlt=prot_mult;
state = move_player1();
perkS1 = -1;
perkS2 = -1;

dead = false;
deathby="";
undead = false;
points = 0;
timerSaw=-1;
sawtimer=true;

regen_intrvl=0.68;
regen_delay=3.25;
regen_delayS=2.95;
undead_time=4.35;
assist_timer=1.6;
bubble_time=6.5;

outside=false;
respawning=false;
color=c_white;
defcts=false;