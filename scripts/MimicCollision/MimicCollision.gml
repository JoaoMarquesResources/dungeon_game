function MimicCollision(){
	
	var _collision = false;
	
	// Horizontal tiles
	if (tilemap_get_at_pixel(collisionMap, x + velh, y))
	{
		x -= x mod 8;
		if (sign(velh) == 1) x += 8 - 1;
		velh = 0;
		_collision = true;
	}

	x += velh;
	
	// Vertical tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + velv))
	{
		y -= y mod 8;
		if (sign(velv) == 1) y += 8 - 1;
		velv = 0;
		_collision = true;
	}
	
	y += velv;
	
	return _collision;
}