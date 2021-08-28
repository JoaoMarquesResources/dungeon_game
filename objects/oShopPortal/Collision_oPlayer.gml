/// @description desc
if (image_index >= 3)
{
	instance_create_layer(x, y, "Explosion", oEnteringPortal);
	
	var target = rShop;
	if (room = Camera1) target = rShop;

	TransitionStart(target, seqFadeOut, seqFadeIn);

	instance_deactivate_object(oPlayer);
	instance_deactivate_object(oGun);
}