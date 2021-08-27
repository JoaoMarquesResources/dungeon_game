/// @description Alguma coisa que seja preciso resetar sempre que abro nova room
camera++;

if (camera == 2)
{
	global.createEnemys = false;
	StopEnemysAppearingAnim = true;
	
	show_message("DAPJWDPOKJWA");
	delayToCreatePortal = 60;
	PortalCreate = false;
	PortalCreateHelp = true;

	NextLayout = false;
	
	ds_list_destroy(LayoutList);
	ds_list_destroy(LayoutListRandom);
	LayoutList = ds_list_create();
	LayoutListRandom = ds_list_create();
	
	ds_list_add(LayoutList, L7);
	ds_list_add(LayoutList, L8);
	
	//Escolher numero de layouts random
	for (var i = 1; i <= irandom_range(1, 3); i++)
	{
		Layout = ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
		pos2 = ds_list_find_index(LayoutList, Layout);
		show_message("Layout: " + string(Layout));
		ds_list_delete(LayoutList, pos2);
		ds_list_add(LayoutListRandom, Layout);
	}
	
	state = layout.ChooseRandom;
	delay = 0;
	DelayForNextLayout = 120;

	choose_layout = true;

	Choose = true;
}