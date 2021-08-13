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
		ScreenShake(2, 15)
		instance_destroy();
	}
	
	return _collision;
}