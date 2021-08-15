function EnemysCollision(){
	
	var _collision = false;
	
	// Horizontal tiles
	if (tilemap_get_at_pixel(collisionMap, x + velh, y))
	{
		x -= x mod TILE_SIZE;
		if (sign(velh) == 1) x += TILE_SIZE - 1;
		velh = 0;
		_collision = true;
	}

	x += velh;
	
	// Vertical tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + velv))
	{
		y -= y mod TILE_SIZE;
		if (sign(velv) == 1) y += TILE_SIZE - 1;
		velv = 0;
		_collision = true;
	}
	
	y += velv;
	
	return _collision;
}