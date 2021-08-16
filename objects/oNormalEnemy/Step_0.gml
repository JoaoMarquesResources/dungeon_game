/// @description desc
switch (state)
{
	case "idle":
		sprite_index = sNormalEnemyIdle;
		
		dist = point_distance(x, y, oPlayer.x, oPlayer.y)
		if (dist < radius)
		{
			state = "shooting";
		}
		
		break;
		
	case "shooting":
		sprite_index = sNormalEnemyShooting;
		
		//disparar 3 balas e esperar e ya
		
		break;
}