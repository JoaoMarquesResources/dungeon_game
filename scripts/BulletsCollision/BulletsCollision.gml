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
	
	if (instance_place(x, y, pEnemy))
	{
		if (oMimicChest.state != "chase") global.atingirMimicChest = true;
		oMimicChest.hp -= 1;
		instance_destroy();
	}
	
	return _collision;
}

function ChestBulletCollision()
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
		oPlayer.hp -= 1;	
		ScreenShake(2, 15)
		instance_destroy();
	}
	
	return _collision;
}