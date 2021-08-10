// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Knockback(source, knockback){
	image_index = 0;
	if (knockback != 0)
	{
		var _knockDir = point_direction(x, y, source.x, source.y);
		x -= lengthdir_x(knockback, _knockDir);
		y -= lengthdir_y(knockback, _knockDir);
	}
}