/// @description desc
switch (state)
{
	case "idle":
		sprite_index = sNormalEnemyIdle;
		
		if (instance_exists(oPlayer))
		{
			dist = point_distance(x, y, oPlayer.x, oPlayer.y);
			if (dist > radius)
			{
				var dir2 = point_direction(x, y, oPlayer.x, oPlayer.y);
				velh = lengthdir_x(0.2, dir2);
				velv = lengthdir_y(0.2, dir2);
			}
			else
			{
				state = "shooting";
			}
			
			if (hp <= 0)
			{
				instance_destroy();
			}
		}
		
		break;
		
	case "shooting":
		sprite_index = sNormalEnemyShooting;
		
		velh = 0;
		velv = 0;
		
		if (instance_exists(oPlayer))
		{
			delayDeTiro--;
			if (delayDeTiro <= 0)
			{
				delayEntreTiros--;
				if (dir)
				{
					dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y - 3);
					dir = false;
				}
				if (delayEntreTiros == 0)
				{
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
					dir = true;
				}
			}
			
			dist = point_distance(x, y, oPlayer.x, oPlayer.y);
			if (dist > radius) state = "idle";
			
			if (hp <= 0) instance_destroy();
		}
		
		break;
}
show_debug_message(tiros);
show_debug_message(delayEntreTiros);
show_debug_message(delayDeTiro);