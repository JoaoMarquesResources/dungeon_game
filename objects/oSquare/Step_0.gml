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
		
		if (instance_exists(oPlayer))
		{
			if (delay == 0)
			{
				dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y + 4);
				var _tiro = instance_create_layer(x, y - 9,  "Player", oSquareBullets);
				_tiro.speed = 0.8;
				_tiro.direction = dirTiro;
				_tiro.image_angle = _tiro.direction;
				bulletId = _tiro.id;				
				shoot = true;
				delay = 90;
				
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
