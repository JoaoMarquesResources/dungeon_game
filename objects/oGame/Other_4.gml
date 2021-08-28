/// @description Alguma coisa que seja preciso resetar sempre que abro nova room
if (room != rShop) camera++;

global.midTransition = false;
global.createEnemys = false;
StopEnemysAppearingAnim = true;

delayToCreatePortal = 60;
PortalCreate = false;
PortalCreateHelp = true;

// States
enum layout
{
	ChooseRandom,
	l_1,
	l_2,
	l_3,
	l_4,
	l_5,
	l_6,
	l_7,
	l_8,
	l_9,
	l_10,
	l_11
}

//----------Camera 1----------
L1 = layout.l_1;
L2 = layout.l_2;
L3 = layout.l_3;
L4 = layout.l_4;
L5 = layout.l_5;
L6 = layout.l_6;
//----------Camera 2----------
L7 = layout.l_7;
L8 = layout.l_8;
L9 = layout.l_9;
L10 = layout.l_10;
L11 = layout.l_11;

NextLayout = false;
state = layout.ChooseRandom;
delay = 0;
DelayForNextLayout = 120;
choose_layout = true;

//CAMERA 1
if (camera == 1)
{
	show_message("Camera 1");
	LayoutList = ds_list_create();
	LayoutListRandom = ds_list_create();

	ds_list_add(LayoutList, L1);
	ds_list_add(LayoutList, L2);
	ds_list_add(LayoutList, L3);
	ds_list_add(LayoutList, L4);
	ds_list_add(LayoutList, L5);
	ds_list_add(LayoutList, L6);

	//Escolher numero de layouts random
	//irandom_range(4, 6)
	for (var i = 1; i <= 0; i++)
	{
		Layout = ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
		pos2 = ds_list_find_index(LayoutList, Layout);
		show_message(Layout);
		ds_list_delete(LayoutList, pos2);
		ds_list_add(LayoutListRandom, Layout);
	}
}

//CAMERA 2
if (camera == 2)
{
	show_message("Camera 2");
	ds_list_destroy(LayoutList);
	ds_list_destroy(LayoutListRandom);
	LayoutList = ds_list_create();
	LayoutListRandom = ds_list_create();
	
	ds_list_add(LayoutList, L7);
	ds_list_add(LayoutList, L8);
	ds_list_add(LayoutList, L9);
	ds_list_add(LayoutList, L10);
	ds_list_add(LayoutList, L11);
	
	//Escolher numero de layouts random
	for (var i = 1; i <= irandom_range(4, 5); i++)
	{
		Layout = ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
		pos2 = ds_list_find_index(LayoutList, Layout);
		show_message("Layout: " + string(Layout));
		ds_list_delete(LayoutList, pos2);
		ds_list_add(LayoutListRandom, Layout);
	}
}