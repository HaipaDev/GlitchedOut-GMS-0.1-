/// @description Show news
if(image_index > 5.8) {
    image_speed = 0;
	if(!os_is_network_connected()){sprite_index=spr_blacktv;image_speed=0;}
	else{
		sprite_index=spr_hudnews;
		if(!instance_exists(obj_news_tab1)) instance_create(__view_get( e__VW.WView, 0 )/4.9, __view_get( e__VW.HView, 0 )/4.0, obj_news_tab1);
		if(!instance_exists(obj_news_tab2)) instance_create(__view_get( e__VW.WView, 0 )/4.9, __view_get( e__VW.HView, 0 )/2.3, obj_news_tab2);
		if(!instance_exists(obj_news_tab3)) instance_create(__view_get( e__VW.WView, 0 )/4.9, __view_get( e__VW.HView, 0 )/1.6, obj_news_tab3);
	}
	if(!instance_exists(obj_closenews_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.26, obj_closenews_button);
}