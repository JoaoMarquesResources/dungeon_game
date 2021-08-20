/// @description desc
if (invulnerable != 0) && ((invulnerable mod 8 < 2) == 0) && (flash == 0)
{
	alpha = true;
	//skip draw
}
else
{	
	draw_sprite_ext(
	sprite_index,
	image_index,
	floor(x),
	floor(y - z),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
	)
}