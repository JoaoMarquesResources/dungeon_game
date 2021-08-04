function PlayerCollision()
{
	//Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + velh, y)) //Se colidimos com a tile
	{
		x -= x mod TILE_SIZE;
		if (sign(velh) == 1) x += TILE_SIZE - 1;
		velh = 0;
		_collision = true;
	}

	//Horizontal Move Commit
	x += velh;
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + velv)) //Se colidimos com a tile
	{
		y -= y mod TILE_SIZE;
		if (sign(velv) == 1) y += TILE_SIZE - 1;
		velv = 0;
		_collision = true;
	}
	
	//Vertical Move Commit
	y += velv;
	
	return _collision;
}