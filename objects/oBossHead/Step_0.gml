/// @description desc
if (state != "HandsShooting") image_index = 1

switch(state)
{
	case "sleeping":
		image_index = 0;
		
		//Se levei um tiro muda de state
		if (hp != HpMax) state = "waking up";
		
		break;
		
	case "waking up":
		image_index = 1;
		
		ScreenShake(1, 80);
		WakingUpDelay--;
		
		if (WakingUpDelay == 0) state = "running";
		break;
	case "running":
		image_index = 1;
		delay--;
		
		if (instance_exists(oPlayer)) dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y + 5);
		bulletsSpeed = 1;
		
		if (x == xstart && y == ystart)
		{
			CreateParticles = true;
			if (delay <= 0)
			{
				velh = runningSpeed;
				delay = 60;
			}
		}	
		if (floor(x) == 136 && floor(y) == 24)
		{
			ScreenShake(1, 4);
			if (CreateParticles){
				//Creating Particles
				var _particles = instance_create_layer(x + sprite_width / 2, y, "Player", oParticles);
				_particles.image_angle = 90;
				
				//Creating bullets
				for (var i = 80; i >= -80; i -= 20)
				{
					var _tiro = instance_create_layer(x, y, "Player", oBossBullets);
					_tiro.speed = bulletsSpeed;
					_tiro.direction = dirTiro + i;
					_tiro.image_angle = _tiro.direction;
				}
				
				CreateParticles = false;
			}
			if (delay <= 0) 
			{
				velv = runningSpeed;
				CreateParticles = true;
				delay = 60;
			}
		}
		if (floor(x) == 136 && floor(y) == 64)
		{
			ScreenShake(1, 4);
			if (CreateParticles){
				var _particles = instance_create_layer(x, y + sprite_height / 2, "Player", oParticles);
				
				//Creating bullets
				for (var i = 80; i >= -80; i -= 20)
				{
					var _tiro = instance_create_layer(x, y, "Player", oBossBullets);
					_tiro.speed = bulletsSpeed;
					_tiro.direction = dirTiro + i;
					_tiro.image_angle = _tiro.direction;
				}
				
				CreateParticles = false;
			}
			if (delay <= 0) 
			{
				velh -= runningSpeed;
				CreateParticles = true;
				delay = 60;
			}
		}
		if (floor(x) == 23 && floor(y) == 64)
		{
			ScreenShake(1, 4);
			if (CreateParticles){
				var _particles = instance_create_layer(x - sprite_width / 2, y, "Player", oParticles);
				_particles.image_angle = -90;
				
				//Creating bullets
				for (var i = 80; i >= -80; i -= 20)
				{
					var _tiro = instance_create_layer(x, y, "Player", oBossBullets);
					_tiro.speed = bulletsSpeed;
					_tiro.direction = dirTiro + i;
					_tiro.image_angle = _tiro.direction;
				}
				
				CreateParticles = false;
			}
			if (delay <= -30)
			{
				velv -= runningSpeed;
				ReturnToStartPos = false;
				CreateParticles = true;
				delay = 60;
			}
		}
		if (floor(x) == 23 && floor(y) == 24)
		{
			ScreenShake(1, 4);
			if (CreateParticles){
				var _particles = instance_create_layer(x, y - sprite_height / 2, "Player", oParticles);
				_particles.image_angle = 180;
				
				//Creating bullets
				for (var i = 80; i >= -80; i -= 20)
				{
					var _tiro = instance_create_layer(x, y, "Player", oBossBullets);
					_tiro.speed = bulletsSpeed;
					_tiro.direction = dirTiro + i;
					_tiro.image_angle = _tiro.direction;
				}
				
				CreateParticles = false;
			}
			if (delay <= 0) 
			{
				velh = runningSpeed;
				ReturnToStartPos = true;
				CreateParticles = true;
				delay = 60;
			}
		}
		if (ReturnToStartPos){
			if (x == xstart && y == ystart){
				velh = 0;
				velv = 0;
				state = "HandsShooting";
				ReturnToStartPos = false;
			}
		}
		
		break;
		
	case "HandsShooting":
		DelayToStartShooting--;
		image_index = 0;
		if (DelayToStartShooting == 0)
		{
			instance_create_layer(36, 20, "Enemys", oBossHand);
			instance_create_layer(124, 20, "Enemys", oBossHand);
			oBossHand.shoot = true;
		}
		
		break;
		
	case "HeadShooting":
		image_index = 1;
		BulletsDelay--; 
		BigBulletsDelay--;
		TripleBulletsDelay--;
		
		if (ShootsNumber != 8)
		{
			//Creating bullets
			if (BulletsDelay == 0)
			{
				ScreenShake(1, 4);
				ShootsNumber++;
				for (var i = -100; i <= 100; i += 20)
				{
					dirTiro = point_direction(x, y, room_width / 2, room_height / 2);
					var _tiro = instance_create_layer(x, y,  "Player", oBossBullets);
					_tiro.speed = bulletsSpeed;
					_tiro.direction = dirTiro + i;
					_tiro.image_angle = _tiro.direction;
					BigBulletsDelay = irandom_range(90, 120);
				}
			}
		
			if (BigBulletsDelay == 0)
			{
				ScreenShake(1, 4);
				ShootsNumber++;
				for (var i = -100; i <= 100; i += 50)
				{
					dirTiro = point_direction(x, y, room_width / 2, room_height / 2);
					var _tiro = instance_create_layer(x, y, "Player", oBossBigBullet);
					_tiro.speed = bulletsSpeed;
					_tiro.direction = dirTiro + i + random_range(-8, 8);
					_tiro.image_angle = _tiro.direction;
					TripleBulletsDelay = 180;
				}
			}
			
			if (TripleBulletsDelay == 0)
			{
				ScreenShake(1, 4);
				ShootsNumber += 2;
				for (var i = -90; i <= 90; i += 60)
				{
					var _tiro = instance_create_layer(x, y, "Player", oBossTripleBullets);
					_tiro.speed = 0.5;
					_tiro.direction = dirTiro + i + random_range(-25, 25);
					BulletsDelay = 200;
				}
			}
		}
		else
		{ 
			DelayToRunningState--;
			if (DelayToRunningState == 0) {
				delay = 60;
				if (instance_exists(oBossHand)) instance_destroy(oBossHand);
				state = "RunToMiddle";
				delay2 = 60;
				ShootsNumber = 0;
				DelayToRunningState = 90;
			}
		}
		break;
		
	case "RunToMiddle":
		image_index = 1;
		if (x == xstart && y == ystart)
		{
			MultipleShootMiddle = 60;
			velv += runningSpeed;
		}
		
		if (floor(x) == 80 && floor(y) == 44)
		{
			velh = 0;
			velv = 0;
			MultipleShootMiddle--;
			DelayToHandShoots--;
			delay2--;
				
			if (DelayToHandShoots >= 60)
			{
				if (MultipleShootMiddle <= 0)
				{
					var360++
					if (var360 > 360) var360 = 0;
			
					var360_2++
					if (var360_2 > 360) var360_2 = 0;
			
					var360_3++
					if (var360_3 > 360) var360_3 = 0;
			
					var360_4++
					if (var360_4 > 360) var360_4 = 0;
			
					if (delay2 == 0) //HERE
					{
						var _tiro = instance_create_layer(x, y,  "Player", oEnemysBullets);
						_tiro.speed = bulletsSpeed;
						_tiro.direction = var360;
						_tiro.image_angle = _tiro.direction;
				
						var _tiro2 = instance_create_layer(x, y,  "Player", oEnemysBullets);
						_tiro2.speed = bulletsSpeed;
						_tiro2.direction = var360_2;
						_tiro2.image_angle = _tiro.direction;
				
						var _tiro3 = instance_create_layer(x, y,  "Player", oEnemysBullets);
						_tiro3.speed = bulletsSpeed;
						_tiro3.direction = var360_3;
						_tiro3.image_angle = _tiro.direction;
				
						var _tiro4 = instance_create_layer(x, y,  "Player", oEnemysBullets);
						_tiro4.speed = bulletsSpeed;
						_tiro4.direction = var360_4;
						_tiro4.image_angle = _tiro.direction;
						delay2 = 8;
					}
				}
			}
		}
		
		if (DelayToHandShoots <= 0){
			velv -= runningSpeed;
			
			if (floor(x) == 80 && floor(y) == 23)
			{
				CreateParticles = true;
				y = ystart;
				ScreenShake(1, 4);
				if (CreateParticles){
					var _particles = instance_create_layer(x, y - sprite_height / 2, "Player", oParticles);
					_particles.image_angle = 180;
					CreateParticles = false;
				}
				velv = 0;
				velh = 0;
				state = "running";
				DelayToHandShoots = 500;
			}
		}	
		break;
		
	case "dead":
		instance_destroy();
		instance_destroy(oBossHand);
		break;
}
if (hp <= 0) state = "dead";
show_debug_message("BOSS HP:	" + string(hp));
show_debug_message("delay:	" + string(delay));
show_debug_message(x);
show_debug_message(y);