/// @description desc
switch(state)
{
	case "normal":
		if (instance_exists(oPlayer))
		{
			//Shooting
			//show_message(helpTimer);
			timer--;
			if (timer <= 0 && !helpTimer)
			{
				dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y - 2);
				for (var i = 1; i >= -1; i--)
				{
					var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
					_tiro.speed = 1.8;
					_tiro.direction = dirTiro + (i * 24);
					_tiro.image_angle = _tiro.direction;
				}
				helpTimer = true;
			}
		
			if (helpTimer)
			{
				timer = irandom_range(60, 120);
				//show_message(timer);
				helpTimer = false;
			}
		
			if (hp <= 0) instance_destroy();
		}
		break;
}

show_debug_message(timer);
show_debug_message(helpTimer);
show_debug_message("------------------------------------------");