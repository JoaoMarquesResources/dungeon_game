/// @description desc
if (delay > 0) delay--;

if (mouse_check_button(mb_left) && delay == 0)
{
	var _tiro = instance_create_layer(x + lengthdir_x(4, image_angle), y + lengthdir_y(4, image_angle), "Gun", oBullet);
	_tiro.speed = 2.5;
	_tiro.direction = direction + random_range(-4.5, 4.5);
	_tiro = image_angle = direction;
	
	delay = 15;
}

global.invulnerable = max(global.invulnerable - 1, 0);
flash = max(flash - 0.05, 0);