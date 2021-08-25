/// @description desc
switch(state)
{		
	case "normal":
		sprite_index = sSquareIdle;

		if (instance_exists(oPlayer))
		{
			var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
			if (dist < radius)
			{
				state = "attack";
			}
			
			if (hp <= 0) instance_destroy();
		}
		
		break;
		
	case "attack":
		delay--;
		if (delay < 40 || delay > 90) sprite_index = sSquareShooting;
		else sprite_index = sSquareIdle;
		
		if (instance_exists(oPlayer))
		{
			if (delay <= 0)
			{
				dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y + 4);
				var _tiro = instance_create_layer(x, y - 9,  "Player", oSquareBullets);
				_tiro.speed = 0.5;
				_tiro.direction = dirTiro;
				_tiro.image_angle = _tiro.direction;
				bulletId = _tiro.id;
				shoot = true;
				delay = random_range(100, 120);
			}
			
			if (shoot)
			{			
				bulletLive--;
			}
			if (bulletLive == 0)
			{
				instance_destroy(bulletId);
				shoot = false;
				bulletLive = 60;
			}
		}
		
		if (hp <= 0) instance_destroy();
		
		break;
}
