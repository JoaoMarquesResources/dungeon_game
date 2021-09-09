/// @description desc
//Item ease in
up = keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(ord("S"));
//keyboard Control
if (menu_control)
{
	if (up)
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (down)
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (menu_cursor != 2)
	{
		if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E")))
		{
			menu_x_target = gui_widht + 300;
			menu_committed = menu_cursor;
			menu_control = false;
		}
	}
}

if (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 1: TransitionStart(Camera1, seqFadeOut, seqFadeIn); break;
 		case 0: game_end(); break;
	}
}