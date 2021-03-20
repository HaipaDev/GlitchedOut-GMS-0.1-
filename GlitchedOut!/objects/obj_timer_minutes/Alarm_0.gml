/// @description  Work, action on end
seconds-=1;
if seconds < 0// checks if seconds is less than 0
{
    seconds = 59;//resest seconds
    minutes -=1;// take one off minutes
}   
alarm[0]=room_speed;//reset alarm

if(minutes==0 and seconds<15 and seconds>1){
	audio_play_sound(snd_tick,1,false);
	color=c_red;}
if(minutes==0 and seconds<=1){
	audio_play_sound(snd_tick2,1,false);
	color=c_red;
	if(!instance_exists(obj_player1))with(obj_players_cntrl)alarm[0]=1;
	if(!instance_exists(obj_player2))with(obj_players_cntrl)alarm[1]=1;
}

if seconds==0 && minutes==0 // check if countdown has reached 00:00:00
{
    // Do Something, for example@
 //show_message(''); //<-- be sure to change message and room for each timer, could have a timer for each room, so you could have a timer that is shorter then the next room, and have it alittle bit longer, etc. Just be sure to make another object for new timer and change the mins.  
if(!instance_exists(obj_end_hud)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/2, obj_end_hud);
alarm[0] = -1;
}

