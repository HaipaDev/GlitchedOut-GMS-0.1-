can_click = true;

rightLimit = x+(sprite_get_width(spr_bar))-100;
leftLimit = x-(sprite_get_width(spr_bar))+100;

//create the slider for this bar and assign it some values
a = instance_create(x, y, obj_Sslider);
a.image_xscale = 1;
a.image_yscale = 1;
a.barLength = sprite_get_width(spr_slider);
a.rightLimit = rightLimit;
a.leftLimit = leftLimit;
a.percentage = global.sound*100;
//its current x value using the above percentage value
a.x = a.leftLimit + ((a.percentage/100) * (a.rightLimit-a.leftLimit));
a.clicked = false;

