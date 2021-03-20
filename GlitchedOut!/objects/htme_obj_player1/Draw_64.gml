/// @description  Draw HUD
if(htme_isLocal()){
    if(dead==false){
        draw_set_halign(fa_left);
        draw_text_colour(__view_get( e__VW.WView, 0 )/7.92, __view_get( e__VW.HView, 0 )/0.69, string_hash_to_newline(name), c_lime, c_green, c_lime, c_lime, .9);
        draw_set_halign(fa_middle);
        draw_healthbar_circular(__view_get( e__VW.WView, 0 )/13.45, __view_get( e__VW.HView, 0 )/0.67, 21, 90, 100, spr_healthbar_empty);
        draw_healthbar_circular(__view_get( e__VW.WView, 0 )/13.45, __view_get( e__VW.HView, 0 )/0.67, 21, 90, hp, spr_healthbar);
        /*timer_ring_gradient(view_wview[0]/13.45, view_hview[0]/0.67, 16, 11, 100, 100, 89, 360, 1, c_maroon, c_red);
        timer_ring_gradient(view_wview[0]/13.45, view_hview[0]/0.67, 16, 11, maxhp, hp, 89, 360, 1, c_silver, c_white);*/
        draw_text_colour(__view_get( e__VW.WView, 0 )/13.95, __view_get( e__VW.HView, 0 )/0.70, string_hash_to_newline(round(hp)), c_white, c_white, c_silver, c_white, .9);
        draw_sprite_ext(spr_skull, 0, __view_get( e__VW.WView, 0 )/5.53, __view_get( e__VW.HView, 0 )/0.671, 0.16, 0.16, 0, c_white, 1);
        draw_text(__view_get( e__VW.WView, 0 )/4.45, __view_get( e__VW.HView, 0 )/0.665, string_hash_to_newline(deaths));
    }
}
/*draw_sprite_ext(spr_healthbar_outs, 0, view_wview[0]/14.25, view_hview[0]/0.67, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_healthbar_empty, 0, view_wview[0]/14.25, view_hview[0]/0.67, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_healthbar, 0, view_wview[0]/14.25, view_hview[0]/0.67, hp/maxhp, 1, 0, c_white, 1);