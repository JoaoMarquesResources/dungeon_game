/// @description desc
switch(state)
{
	case "chase":
		if (instance_exists(oPlayer))
		{
			timer--;
			
			if (timer != 0) sprite_index = sFlyEnemyIdle;
			
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
				sprite_index = sFlyEnemyShooting;
				
				if (sprite_index == sFlyEnemyShooting && image_index == 4) shoot = true;
				
				if (shoot)
				{
					dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y - 2);
				
					//Random bullets number
					var value = irandom_range(-2, -10);
					for (var i = -value; i >= value; i--)
					{
						var _tiro = instance_create_layer(x + (sign(velh) * 5), y - 6,  "Player", oEnemysBullets);
						_tiro.speed = random_range(0.5, 1.5);
						_tiro.direction = dirTiro + (i * 24);
						_tiro.image_angle = _tiro.direction;
					}
					helpTimer = true;
					shoot = false;
				}
			}
			else sprite_index = sFlyEnemyIdle;
		
			if (helpTimer)
			{
				timer = irandom_range(50, 100);
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
if (velh != 0) image_xscale = sign(velh);