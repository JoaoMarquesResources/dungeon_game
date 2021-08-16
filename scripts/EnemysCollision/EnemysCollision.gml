function EnemysCollision(){
	
	var _collision = false;
	
	// Horizontal Collision
	if (place_meeting(x + velh, y, oWall)) {
		repeat (abs(velh) + 1) {
			if (place_meeting(x + sign(velh), y, oWall))
			    break;
			x += sign(velh);
		}
		velh = 0;
		_collision = true;
	}
	
	x += velh;
	
	// Vertical Collision
	if (place_meeting(x, y + velv, oWall)) {
		repeat (abs(velv) + 1) {
			if (place_meeting(x, y + sign(velv), oWall))
			    break;
			y += sign(velv);
		}
		velv = 0;
		_collision = true;
	}
	
	y += velv;

	return _collision;
}