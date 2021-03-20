/// @description  timer_ring(x,y,radius,thickness,maxsegments,segments,startangle,totalangle,direction,colour);
/// @function  timer_ring
/// @param x
/// @param y
/// @param radius
/// @param thickness
/// @param maxsegments
/// @param segments
/// @param startangle
/// @param totalangle
/// @param direction
/// @param colour

var xx = argument0
var yy = argument1
var radius = argument2
var thickness = argument3
var maxsegments = argument4
var segments = argument5
var startangle = argument6
var totalangle = argument7
var dir = argument8
var colour = argument9

anglechange = (totalangle/maxsegments)*(pi/180)
i = startangle*(pi/180)

ax = xx+(cos(i)*radius)
ay = yy-(sin(i)*radius)

bx = xx+(cos(i)*(radius+thickness))
by = yy-(sin(i)*(radius+thickness))

repeat(segments) {
i += dir * anglechange

cx = xx+(cos(i)*radius)
cy = yy-(sin(i)*radius)

dx = xx+(cos(i)*(radius+thickness))
dy = yy-(sin(i)*(radius+thickness))

draw_triangle_colour(ax,ay,bx,by,dx,dy,colour,colour,colour,0)
draw_triangle_colour(ax,ay,cx,cy,dx,dy,colour,colour,colour,0)

ax = cx
ay = cy

bx = dx
by = dy
}
