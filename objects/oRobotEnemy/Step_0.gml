/// @description desc
switch (state)
{		
	case "chase":
	
		if (instance_exists(oPlayer))
		{
			goToChaseTimer--;
			delay--;
			var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
			if (dist > radius && goToChaseTimer <= 0)
			{
				var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
				velh = lengthdir_x(0.20, dir);
				velv = lengthdir_y(0.20, dir);
			}
			else
			{
				velh = 0;
				velv = 0;
			}
		
			if (delay == 0)
			{
				dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y + 5);
				bulletsSpeed = random_range(0.6, 0.8);
				for (var i = 80; i >= -80; i -= 20)
				{
					var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
					_tiro.speed = bulletsSpeed;
					_tiro.direction = dirTiro + i;
					_tiro.image_angle = _tiro.direction;
					delay = irandom_range(90, 120);
				}
			}
			
			if (velh != 0 && oPlayer.velh != 0) image_xscale = sign(velh);
			
			//state == dead
			if (hp <= 0) state = "dead";
		}
		else
		{
			velh = 0;
			velv = 0;
		}
		break;

	case "hurt":
		
		state = "chase";
		break;
		
	case "dead":
		instance_destroy();
		break;
}