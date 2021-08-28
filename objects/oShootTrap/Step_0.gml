/// @description desc
switch(state)
{
	case "chase":
		if (instance_exists(oPlayer))
		{
			timer--;

			if (timer <= 0)
			{
				if (shoot)
				{
					dirTiro = point_direction(x, y, room_width / 2, room_height / 2);
					var _tiro = instance_create_layer(x, y, "Player", oEnemysBullets);
					_tiro.speed = random_range(0.5, 1.2);
					_tiro.direction = dirTiro + irandom_range(50, -50);
					_tiro.image_angle = _tiro.direction;
					timer = irandom_range(10, 20);
				}
			}
		
			if (hp <= 0) instance_destroy();
		}
		break;
}