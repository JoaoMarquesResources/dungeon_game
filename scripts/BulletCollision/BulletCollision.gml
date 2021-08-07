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
	
	return _collision;
}