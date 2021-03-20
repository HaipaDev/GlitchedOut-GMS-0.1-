/// @description  Draw timer
draw_self();
draw_healthbar_circular(x, y, 16, 360, 100, spr_timer_blue);
draw_healthbar_circular(x, y, 16, 360, timer0/10, spr_timer_aqua);
/*timer_ring_gradient(x, y, 16, 6, 100, 100, 89, 360, 1, c_aqua, c_blue);
timer_ring_gradient(x, y, 16, 6, maxtime/10, timer0/10, 89, 360, 1, c_blue, c_black);*/