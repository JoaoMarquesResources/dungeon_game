/// @description desc
switch(state)
{
	case "multipleShoots":		
		if (instance_exists(oPlayer))
		{
			timer--;
			delay--;
			
			if (timer <= 0)
			{
				if (shoot)
				{
					dirTiro = point_direction(x, y, oPlayer.x + random_range(-25, 25), oPlayer.y + random_range(-10, 10));
					var _tiro = instance_create_layer(x, y, "Player", oEnemysBullets);
					_tiro.speed = random_range(0.5, 1.2);
					_tiro.direction = dirTiro + irandom_range(35, -35);
					_tiro.image_angle = _tiro.direction;
					timer = irandom_range(10, 20);
				}
			}
			
			if (delay == 0) 
			{
				shoot = false;
			}
			if (delay <= -120) {
				oBossHead.state = "HeadShooting";
				oBossHead.BulletsDelay = 20;
				oBossHead.DelayToStartShooting = 90;
				delay = 620;
				state = "stop";
			}
		}
		break;
	
	case "stop":
	
		break;
}