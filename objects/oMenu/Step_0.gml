/// @description desc
//Item ease in
//keyboard Controls
if (menu_control)
{
	if (keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_widht + 300;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 1: TransitionStart(Camera0, seqFadeOut, seqFadeIn); break;
 		case 0: game_end(); break;
	}
}