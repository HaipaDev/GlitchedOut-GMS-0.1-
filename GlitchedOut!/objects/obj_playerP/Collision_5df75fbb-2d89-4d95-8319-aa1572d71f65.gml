/// @description  Teleport and damage
x = __view_get( e__VW.WView, 0 )/random_range(1.9, 2.2);
y = __view_get( e__VW.HView, 0 )/random_range(1.9, 2.2);
add_screenshake(4, room_speed*.125);
create_glitch(x, y);
hp-=other.dmg*prot_mult;

// Reset regen perk
alarm[0] = room_speed*regen_delay;