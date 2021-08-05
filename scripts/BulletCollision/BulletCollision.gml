function BulletCollision()
{
	var _collision = false;
	//Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y)) //Se colidimos com a tile
	{
		instance_destroy();
	}
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y)) //Se colidimos com a tile
	{
		instance_destroy();
	}
	
	return _collision;
}