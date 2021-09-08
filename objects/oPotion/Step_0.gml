/// @description desc
if (instance_exists(oPlayer))
{
	delay--;
	if (delay <= 0)
	{
		var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
		if (dist < radius)
		{
			if (oPlayer.buy) 
			{
				instance_destroy();
			}
		}
	}
}