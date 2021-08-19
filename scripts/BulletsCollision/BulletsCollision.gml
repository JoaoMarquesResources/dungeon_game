function BulletCollision()
{
	var _collision = false;
	
	if (place_meeting(x, y, oWall))
	{
		instance_destroy();
		_collision = true;
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
	if (place_meeting(x, y, oWall))
	{
		instance_destroy();
		_collision = true;
	}
	
	if (instance_place(x, y, oPlayer) && oPlayer.state != "rolling")
	{
		atingiuPlayer = true;		
		HurtPlayer(1);
		instance_destroy();
	}
	
	return _collision;
}