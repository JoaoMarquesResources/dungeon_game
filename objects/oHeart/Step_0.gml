/// @description desc
if (instance_exists(oPlayer))
{
	var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
	if (dist < radius)
	{
		if (oPlayer.buy && global.PlayerHP < global.PlayerHpMax && global.playerMoney >= valor) 
		{
			global.playerMoney -= valor;
			global.PlayerHP++;
			instance_destroy();
		}
	}
}