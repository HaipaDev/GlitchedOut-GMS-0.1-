/// @description  Undead dead
hp=0;
dead=true;
if(alarm[5]>0)deathby="player";
else{deathby="other"}
undead=false;
death();
if(perkS1!=1 or perkS2!=1){
	vspd = 3.55;
	hspd = 3.9;
	rotation_power = 20;
}
else if(perkS1==1 or perkS2==1) {
    vspd = 2.6;
    hspd = 2.35;
    rotation_power = 12;
    hp = 115;
    maxhp = 115;
}