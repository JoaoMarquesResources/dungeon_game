/// @description desc
if (image_index >= 3)
{
	instance_create_layer(x, y, "Explosion", oEnteringPortal);
	
	var target = oGame.Room;

	TransitionStart(target, seqFadeOut, seqFadeIn);

	instance_deactivate_object(oPlayer);
	instance_deactivate_object(oGun);
}