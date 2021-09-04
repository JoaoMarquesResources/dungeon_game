/// @description desc
draw_self();

if (instance_exists(oPlayer))
{
	var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
	if (dist < radius)
	{
		draw_set_font(fText);
		draw_text(x - 6, y - 15, string(valor));
		draw_sprite(sCoin, 0, x + 6, y - 11);
		draw_set_font(-1);
	}	
}