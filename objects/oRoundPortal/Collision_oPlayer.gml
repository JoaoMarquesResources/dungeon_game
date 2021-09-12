/// @description desc
if (image_index >= 9)
{
	instance_create_layer(x, y, "Explosion", oEnteringPortal);
	
	if (room != Camera0) var target = oGame.Room;
	else var target = Camera1;

	TransitionStart(target, seqFadeOut, seqFadeIn);

	instance_deactivate_object(oPlayer);
	instance_deactivate_object(oGun);
}