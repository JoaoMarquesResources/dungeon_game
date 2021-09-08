/// @description desc
text = "THE WIZARD DUNGEON";

gui_widht = room_width;
gui_height = room_height;
gui_margin = 25;

menu_x = 150;
menu_y = gui_height - gui_margin;

menu_x_target = gui_widht - gui_margin;
menu_itemheight = font_get_size(fMenuText);
menu_committed = -1;
menu_control = true;

menu[1] = "New Game";
menu[0] = "Quit";

menu_items = array_length_1d(menu);

menu_cursor = 2;