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
				velh = lengthdir_x(0.25, dir);
				velv = lengthdir_y(0.25, dir);
			}
			else
			{
				velh = 0;
				velv = 0;
			}
		
			if (delay == 0)
			{
				if (oPlayer.velh != 0) var coisa = choose(0, oPlayer.image_xscale * random_range(20, 25));
				else coisa = 0;
				dirTiro = point_direction(x, y, oPlayer.x - coisa, oPlayer.y + 5);
				var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
				_tiro.speed = random_range(1, 1.5);
				_tiro.direction = dirTiro;
				_tiro.image_angle = _tiro.direction;
				delay = irandom_range(10, 40);
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