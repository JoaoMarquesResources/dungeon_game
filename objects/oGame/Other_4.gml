/// @description Alguma coisa que seja preciso resetar sempre que abro nova room
randomize();

if (room != rShop) camera++;
else shop++;
if (camera == 1) Room = Camera5; //room = goto
if (camera == 2) Room = Camera3;
if (camera == 3) Room = Camera4;

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
	l_11,
	l_12,
	l_13,
	l_14,
	l_15,
	l_16,
	l_17,
	l_18,
	l_19,
	l_20,
	l_21
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
L12 = layout.l_12;
//----------Camera 3----------
L13 = layout.l_13;
L14 = layout.l_14;
L15 = layout.l_15;
L16 = layout.l_16;
//----------Camera 4----------
L17 = layout.l_17;
L18 = layout.l_18;
L19 = layout.l_19;
L20 = layout.l_20;
L21 = layout.l_21;

NextLayout = false;
state = layout.ChooseRandom;
delay = 0;
DelayForNextLayout = 120;
choose_layout = true;

if (room != rShop)
{
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
		//irandom_range(4, 5)
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
		ds_list_add(LayoutList, L12);
	
		//Escolher numero de layouts random
		//irandom_range(3, 5)
		for (var i = 1; i <= 0; i++)
		{
			Layout = ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
			pos2 = ds_list_find_index(LayoutList, Layout);
			show_message("Layout: " + string(Layout));
			ds_list_delete(LayoutList, pos2);
			ds_list_add(LayoutListRandom, Layout);
		}
	}

	//CAMERA 3
	if (camera == 3)
	{
		show_message("Camera 3");
		ds_list_destroy(LayoutList);
		ds_list_destroy(LayoutListRandom);
		LayoutList = ds_list_create();
		LayoutListRandom = ds_list_create();
	
		ds_list_add(LayoutList, L12);
		ds_list_add(LayoutList, L13);
		ds_list_add(LayoutList, L14);
		ds_list_add(LayoutList, L15);
	
		//Escolher numero de layouts random
		//irandom_range(3, 4)
		for (var i = 1; i <= 0; i++)
		{
			Layout = ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
			pos2 = ds_list_find_index(LayoutList, Layout);
			show_message("Layout: " + string(Layout));
			ds_list_delete(LayoutList, pos2);
			ds_list_add(LayoutListRandom, Layout);
		}
	}

	//CAMERA 4
	if (camera == 4)
	{
		show_message("Camera 4");
		ds_list_destroy(LayoutList);
		ds_list_destroy(LayoutListRandom);
		LayoutList = ds_list_create();
		LayoutListRandom = ds_list_create();
	
		ds_list_add(LayoutList, L16);
		ds_list_add(LayoutList, L17);
		ds_list_add(LayoutList, L18);
		ds_list_add(LayoutList, L19);
		ds_list_add(LayoutList, L20);
		ds_list_add(LayoutList, L21);
	
		//Escolher numero de layouts random
		//irandom_range(3, 4)
		for (var i = 1; i <= 0; i++)
		{
			Layout = ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
			pos2 = ds_list_find_index(LayoutList, Layout);
			show_message("Layout: " + string(Layout));
			ds_list_delete(LayoutList, pos2);
			ds_list_add(LayoutListRandom, Layout);
		}
	}
}