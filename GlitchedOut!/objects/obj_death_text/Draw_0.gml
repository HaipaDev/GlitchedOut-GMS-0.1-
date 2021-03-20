/// @description  Draw death text
draw_set_font(fnt_game);
draw_set_color(c_white);
var yy=y+25;
var xx=30;
if(room==rm_game){
    if (obj_player1.points == obj_player2.points) {
		draw_set_color(c_yellow);
        draw_text(x, y, "DRAW !");
		draw_text(x-xx,yy,obj_player1.points);
		draw_text(x,yy," = ");
		draw_text(x+xx,yy,obj_player2.points);
    } else if(obj_player1.points > obj_player2.points) {
		draw_set_color(c_white);
        draw_text(x, y, "Player 1 is the WINNER");
		draw_set_color(c_aqua);
		draw_text(x-xx,yy,obj_player1.points);
		draw_text(x,yy," - ");
		draw_text(x+xx,yy,obj_player2.points);
    } else if (obj_player1.points < obj_player2.points) {
		draw_set_color(c_white);
        draw_text(x, y, "Player 2 is the WINNER");
		draw_set_color(c_aqua);
		draw_text(x-xx,yy,obj_player2.points);
		draw_text(x,yy," - ");
		draw_text(x+xx,yy,obj_player1.points);
    }
}/* else if(room==htme_rm_game){
    if (htme_obj_player1.deaths == htme_obj_player2.deaths) {
        draw_text(x, y, "DRAW!");
    } else if(htme_obj_player1.deaths > htme_obj_player2.deaths) {
        draw_text(x, y, htme_obj_player2.name+" is the WINNER");
    } else if (htme_obj_player1.deaths < htme_obj_player2.deaths) {
        draw_text(x, y, htme_obj_player1.name+" is the WINNER");
    }
}*/
draw_set_color(c_white);