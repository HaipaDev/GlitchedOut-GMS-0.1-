/// @description  Debug Mode
if(global.debugmode==true){
if(keyboard_check_pressed(ord("1"))) with(obj_player1)hp = 11;
if(keyboard_check_pressed(ord("2"))) with(obj_player2)hp = 11;
if(keyboard_check_pressed(ord("3"))) with(obj_timer_minutes){minutes=0;seconds=05;}
//if(keyboard_check_pressed(ord("4"))) 
/*if(keyboard_check_pressed(ord("3"))) htme_obj_timer_minutes.minutes = 0; htme_obj_timer_minutes.seconds = 2;
if(keyboard_check_pressed(ord("4"))) htme_obj_event_manager.event_num = 1;
if(keyboard_check_pressed(ord("5"))) htme_obj_event_manager.event_num = 2;
if(keyboard_check_pressed(ord("6"))) htme_obj_event_manager.event_num = 3;*/
}