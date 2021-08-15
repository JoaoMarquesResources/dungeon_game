/// @description desc
if (global.abrirMimicChest)
{
	image_index = 1;
}

switch (state)
{
	case "normal":
		sprite_index = sMimicChest;
		
		if (global.atingirMimicChest && state != "chase")
		{
			for (var i = 0; i <= 360; i += 45)
			{
				var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
				_tiro.speed = 2.5;
				_tiro.direction = i;
				_tiro.image_angle = i;
			}
			global.atingirMimicChest = false;
			state = "chase";
		}
		break;
		
	case "chase":
		sprite_index = sMimicChestChasing;
	
		if (instance_exists(oPlayer))
		{
			goToChaseTimer--;
			delay--;
			var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
			dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y + 5);
			if (dist > enemyAggroRadius && goToChaseTimer <= 0)
			{
				var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
				velh = lengthdir_x(0.5, dir);
				velv = lengthdir_y(0.5, dir);
			}
			else
			{
				velh = 0;
				velv = 0;
			}
		
			if (delay == 0)
			{
				var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
				_tiro.speed = 2.5;
				_tiro.direction = dirTiro;
				_tiro.image_angle = _tiro.direction;
				delay = 30;
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