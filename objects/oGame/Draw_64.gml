/// @description desc
// Draw life top UI
/*draw_sprite_ext(
	sLifeTopUI,
	image_index,
	floor(2),
	floor(1),
	global.lifeTopXscale + (0.18 * addedLifes) + (0.01 * addedLifes),
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
)
*/

// Draw destroyed life
for (var i = 0; i < global.PlayerHpMax; i++)
{
	draw_sprite(sLifeUI, 1, 8 + (i * 10), 6);
}

// Draw on top of destroyed life the normal life
for (var i = 0; i < global.PlayerHP; i++)
{
	draw_sprite(sLifeUI, 0, 8 + (i * 10), 6);
}
