/// @description desc
switch(state)
{
	case "idle":
		sprite_index = sSquareIdle;
		
		dist = point_distance(x, y, oPlayer.x, oPlayer.y);
		if (dist < radius)
		{
			state = "attack";
		}
		break;
		
	case "attack":
		sprite_index = sSquareShotting;
		
		
		break;
}