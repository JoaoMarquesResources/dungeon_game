/// @description desc
draw_line(x, y, xEnd, yEnd);

for (var i = 0; i < length_laser; i++)
{
	draw_sprite_ext(sLaser, 1, x + lengthdir_x(i, direction), y + lengthdir_y(i, direction), 1, 1, direction, c_white, 1);
}