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
				var _tiro = instance_create_layer(x + sprite_width / 2, y - sprite_height / 2,  "Player", oChestBullet);
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
			delay--;
			var dir = point_direction(x, y, oPlayer.x, oPlayer.y - oPlayer.sprite_height / 2);
			var dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);
			velh = lengthdir_x(0.5, dir);
			velv = lengthdir_y(0.5, dir);
		
			if (delay == 0)
			{
				var _tiro = instance_create_layer(x, y - sprite_height / 2,  "Player", oChestBullet);
				_tiro.speed = 1.5;
				_tiro.direction = dirTiro;
				_tiro.image_angle = _tiro.direction;
				delay = 30;
			}
			
			if (velh != 0 || oPlayer.velh != 0) image_xscale = sign(velh);
			
			//state == dead
			if (hp <= 0) state = "dead";
			
			//state == knockback
		}
		break;
		
	case "knockback":
		var dir = point_direction(x, y, oPlayer.x, oPlayer.y - oPlayer.sprite_height / 2);
		if (!stopDamage) hp -= oPlayer.damage;
		x += -lengthdir_x(8, dir);
		y += -lengthdir_y(8, dir);
		state = "chase";
		stopDamage = true;
		break;
		
	case "dead":
		instance_destroy();
		break;
}
show_debug_message(state);