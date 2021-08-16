/// @description desc
switch(state)
{
	case "idle":
		sprite_index = sSquareIdle;
		
		dist = point_distance(x, y, oPlayer.x, oPlayer.y);
		if (dist < radius)
		{
			state = "attack";
		}
		break;
		
	case "attack":
		sprite_index = sSquareShotting;
		delay--;
		
		if (image_index >= 1) image_speed = 0;
		
		if (instance_exists(oPlayer))
		{
			if (delay == 0)
			{
				dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y + 4);
				var _tiro = instance_create_layer(x, y - 11,  "Player", oSquareBullets);
				_tiro.speed = 0.5;
				_tiro.direction = dirTiro;
				_tiro.image_angle = _tiro.direction;
				bulletId = _tiro.id;
				shoot = true;
				delay = 90;
			}
			
			if (shoot)	bulletLive--;
			if (bulletLive == 0)
			{
				instance_destroy(bulletId);
				shoot = false;
				bulletLive = 60;
			}
		}
		
		break;
}
show_debug_message(bulletLive);