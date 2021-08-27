/// @description desc
if (global.abrirMimicChest)
{
	image_index = 1;
}

switch (state)
{
	case "normal":
		sprite_index = sMimicChest;
		
		if (place_meeting(x, y, oPlayer) && keyboard_check_pressed(ord("E"))) global.atingirMimicChest = true;
		
		if (global.atingirMimicChest && state != "chase")
		{
			for (var i = 0; i <= 360; i += 45)
			{
				var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
				_tiro.speed = 2;
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
			if (dist > radius && goToChaseTimer <= 0)
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
				if (oPlayer.velh != 0) var coisa = choose(0, oPlayer.image_xscale * random_range(20, 25));
				else coisa = 0;
				dirTiro = point_direction(x, y, oPlayer.x - coisa, oPlayer.y + 5);
				var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oEnemysBullets);
				_tiro.speed = random_range(1.4, 1.8);
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