/// @description desc
switch (state)
{		
	case "chase":
	
		if (instance_exists(oPlayer))
		{
			goToChaseTimer--;
			delay--;
			delay2--;
			delay3--;
			
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
				image_index = min(0, 1);
				for (var i = 0; i <= 360; i += 90)
				{
					var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
					_tiro.speed = bulletsSpeed;
					_tiro.direction = i;
					_tiro.image_angle = _tiro.direction;
					delay2 = irandom_range(60, 120);
				}
			}
			
			if (delay2 == 0)
			{
				image_index = min(2, 3);
				for (var i = 45; i <= 360; i += 90)
				{
					var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
					_tiro.speed = bulletsSpeed;
					_tiro.direction = i;
					_tiro.image_angle = _tiro.direction;
					delay3 = irandom_range(60, 120);
				}
			}
			
			if (delay3 == 0)
			{
				image_index = min(4, 5);
				for (var i = 0; i <= 360; i += 45)
				{
					var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
					_tiro.speed = bulletsSpeed;
					_tiro.direction = i;
					_tiro.image_angle = _tiro.direction;
					delay = irandom_range(60, 90);
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
show_debug_message("sign(velh))" + string(sign(velh)));