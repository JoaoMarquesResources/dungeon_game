/// @description desc
if (image_index >= 3)
{
	instance_create_layer(x, y, "Explosion", oPlayerExplosion);
	instance_deactivate_object(oPlayer);
	instance_deactivate_object(oGun);

	var target = Camera2;
	if (room = Camera1) target = Camera2;

	TransitionStart(target, seqFadeOut, seqFadeIn);
}