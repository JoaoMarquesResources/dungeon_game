/// @description desc
randomize();
global.iCamera = instance_create_layer(0, 0, layer, oCamera);

atingiuPlayer = false;

showUI = false;

global.createEnemys = false;
StopEnemysAppearingAnim = true;

global.RoomEnemys = instance_number(pEnemy);
delayToCreatePortal = 60;
PortalCreate = false;
PortalCreateHelp = true;

NextLayout = false;

global.atingirMimicChest = false;

global.PlayerHP = 5;
global.PlayerHpMax = global.PlayerHP;
global.playerMoney = 0;

camera = 0;

LayoutList = ds_list_create();
LayoutListRandom = ds_list_create();

ds_list_add(LayoutList, layout.l_1);
ds_list_add(LayoutList, layout.l_2);
ds_list_add(LayoutList, layout.l_3);
ds_list_add(LayoutList, layout.l_4);
ds_list_add(LayoutList, layout.l_5);
ds_list_add(LayoutList, layout.l_6);

//Escolher numero de layouts random
for (var i = 1; i <= 0; i++)
{
	Layout = ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
	pos2 = ds_list_find_index(LayoutList, Layout);
	show_message(Layout);
	ds_list_delete(LayoutList, pos2);
	ds_list_add(LayoutListRandom, Layout);
}

listValue = noone;

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
	l_8
}
state = layout.ChooseRandom;
delay = 0;
DelayForNextLayout = 120;

choose_layout = true;

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