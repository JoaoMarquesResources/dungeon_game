/// @description desc
switch (state)
{
	case "idle":
		sprite_index = sNormalEnemyIdle;
		
		if (instance_exists(oPlayer))
		{
			dist = point_distance(x, y, oPlayer.x, oPlayer.y)
			if (dist < radius)
			{
				state = "shooting";
			}
		}
		
		break;
		
	case "shooting":
		sprite_index = sNormalEnemyShooting;
		
		if (instance_exists(oPlayer))
		{
			delayDeTiro--;
			if (delayDeTiro <= 0)
			{
				delayEntreTiros--;
				if (delayEntreTiros == 0)
				{
					dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y - 3);
					var _tiro = instance_create_layer(x, y - 3, "Player", oEnemysBullets);
					_tiro.speed = 0.2;
					_tiro.direction = dirTiro;
					_tiro.image_angle = _tiro.direction;
					tiros++;
					delayEntreTiros = 45;
				}
				if (tiros == 3)
				{
					delayEntreTiros = 45;
					delayDeTiro = 120;
					tiros = 0;
				}
			}
		}
		
		break;
}
show_debug_message(tiros);
show_debug_message(delayEntreTiros);
show_debug_message(delayDeTiro);