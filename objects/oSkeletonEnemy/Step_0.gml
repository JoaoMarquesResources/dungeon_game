/// @description desc
switch(state)
{
	case "chase":
		if (instance_exists(oPlayer))
		{
			//Shooting
			//show_message(helpTimer);
			timer--;
			var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
			if (dist > radius)
			{
				var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
				velh = lengthdir_x(0.2, dir);
				velv = lengthdir_y(0.2, dir);
			}
			
			if (timer <= 30)
			{
				velh = 0;
				velv = 0;
			}
			
			if (timer <= 0 && !helpTimer)
			{
				dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y - 2);
				for (var i = 1; i >= -1; i--)
				{
					var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
					_tiro.speed = 1;
					_tiro.direction = dirTiro + (i * 24);
					_tiro.image_angle = _tiro.direction;
				}
				helpTimer = true;
			}
		
			if (helpTimer)
			{
				timer = irandom_range(90, 135);
				helpTimer = false;
			}
		
			if (hp <= 0) instance_destroy();
		}
		else
		{
			velh = 0;
			velv = 0;
		}
		break;
}