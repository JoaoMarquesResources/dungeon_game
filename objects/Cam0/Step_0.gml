/// @description desc
if (instance_exists(oGame)) instance_destroy(oGame);

if (createPortal) {
	instance_create_layer(80, 32, "Objects", oRoundPortal);
	createPortal = false;
}

if (instance_exists(oRoundPortal)) stopCreating = true;

show_debug_message(instance_number(oRoundPortal));