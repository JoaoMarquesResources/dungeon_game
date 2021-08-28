/// @description desc
delay--;

if (image_index == 4 && delay != 0)
{
	image_speed = 0;
}

if (delay == 0)
{
	image_speed = 1;
}

show_debug_message("global.midTransition:	" + string(global.midTransition));