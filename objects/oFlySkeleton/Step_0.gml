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
			
			var360++
			if (var360 > 360) var360 = 0;
			
			var360_2++
			if (var360_2 > 360) var360_2 = 0;
			
			var360_3++
			if (var360_3 > 360) var360_3 = 0;
			
			var360_4++
			if (var360_4 > 360) var360_4 = 0;
			
			if (delay == 0)
			{
				var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
				_tiro.speed = bulletsSpeed;
				_tiro.direction = var360;
				_tiro.image_angle = _tiro.direction;
				
				var _tiro2 = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
				_tiro2.speed = bulletsSpeed;
				_tiro2.direction = var360_2;
				_tiro2.image_angle = _tiro.direction;
				
				var _tiro3 = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
				_tiro3.speed = bulletsSpeed;
				_tiro3.direction = var360_3;
				_tiro3.image_angle = _tiro.direction;
				
				var _tiro4 = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
				_tiro4.speed = bulletsSpeed;
				_tiro4.direction = var360_4;
				_tiro4.image_angle = _tiro.direction;
				delay = 20;
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