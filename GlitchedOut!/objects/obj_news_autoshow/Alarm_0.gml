/// @description Show news
if(room==rm_menu){
if(show=="true" and shown==false){
	if(!instance_exists(obj_news_hud)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/2, obj_news_hud);
	shown=true;
	}
}