/// @description desc
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;

if (delay > 0) delay--;

if (mouse_check_button(mb_left) && delay == 0)
{
	var _tiro = instance_create_layer(x + lengthdir_x(4, image_angle), y + lengthdir_y(4, image_angle), "Gun", oBullet);
	_tiro.speed = 2.5;
	_tiro.direction = direction + random_range(-4.5, 4.5);
	_tiro = image_angle = direction;
	delay = 15;
}