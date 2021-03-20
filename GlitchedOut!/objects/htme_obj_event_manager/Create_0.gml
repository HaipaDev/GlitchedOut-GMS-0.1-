/// @description  Synchronize with engine
if (!htme_isServer()) {
   instance_destroy();
   exit;
}
mp_sync();

mp_add("time_ev","timer0",buffer_u16,1);
mp_add("time_ev","timer1",buffer_u16,1);
mp_add("time_ev","timer2",buffer_u16,1);
mp_add("time_ev","timer3",buffer_u16,1);
mp_setType("time_ev",mp_type.SMART);
mp_add("events","black_hole",buffer_bool,1);
mp_add("events","glitchageddon",buffer_bool,1);
mp_add("events","gravity_drag",buffer_bool,1);
mp_add("events","event_num",buffer_u8,1);
mp_add("events","event_text",buffer_string,1);
mp_add("events","drag_yyP1",buffer_u16,1);
mp_add("events","drag_yyP2",buffer_u16,1);
mp_add("events","drag_xxP1",buffer_u16,1);
mp_add("events","drag_xxP2",buffer_u16,1);
mp_setType("events",mp_type.SMART);


/*mp_addBuiltinBasic("basicDrawing",1);
mp_setType("basicDrawing",mp_type.SMART);

/* */
/// Properties
depth = -1100;
timer0 = 180;
timer1 = -1;
timer2 = -1;
timer3 = -1;
event_text = "";
black_hole = false;
glitchageddon = false;
gravity_drag = false;
event_num = -1;
drag_yyP1 = 8;
drag_yyP2 = 600;
drag_xxP1 = choose(8, 488);
drag_xxP2 = choose(8, 488);
global.events = true;

/* */
/*  */
