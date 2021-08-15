function BulletCollision()
{
	var _collision = false;
	// Horizontal Collision
	if (tilemap_get_at_pixel(collisionMap, x, y))
	{
		instance_destroy();
	}
			
	// Vertical Collision
	if (tilemap_get_at_pixel(collisionMap, x, y))
	{
		instance_destroy();
	}
	
	with (instance_place(x, y, pEnemy))
	{
		hp--;
		if (object_index == oMimicChest)
		{
			if (oMimicChest.state != "chase") global.atingirMimicChest = true;
		}
		instance_destroy(other);
	}
	
	return _collision;
}

function EnemyBulletCollision()
{
	var _collision = false;
	// Horizontal Collision
	if (tilemap_get_at_pixel(collisionMap, x, y))
	{
		instance_destroy();
	}
			
	// Vertical Collision
	if (tilemap_get_at_pixel(collisionMap, x, y))
	{
		instance_destroy();
	}
	
	if (instance_place(x, y, oPlayer))
	{
		atingiuPlayer = true;
		with (oPlayer)
		{
			IsInvulnerable = true;
			global.invulnerable = 120;
			flash = 0.7;
		}
		
		if (global.DoScreenshake && !oPlayer.IsInvulnerable)
		{
			global.PlayerHP -= 1;
			ScreenShake(2, 15);
		}
		instance_destroy();
	}
	
	return _collision;
}