/// @description desc
randomize();

global.iCamera = instance_create_layer(0, 0, layer, oCamera);

global.createEnemys = false;
StopEnemysAppearingAnim = true;

atingiuPlayer = false;

showUI = false;

global.RoomEnemys = instance_number(pEnemy);
delayToCreatePortal = 60;
PortalCreate = false;
PortalCreateHelp = true;

NextLayout = false;

global.atingirMimicChest = false;

LayoutList = ds_list_create();
ds_list_add(LayoutList, layout.l_1);
ds_list_add(LayoutList, layout.l_2);
ds_list_add(LayoutList, layout.l_3);
ds_list_add(LayoutList, layout.l_4);
ds_list_add(LayoutList, layout.l_5);
ds_list_add(LayoutList, layout.l_6);
ds_list_add(LayoutList, layout.l_7);
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
	l_7
}
state = layout.ChooseRandom;
delay = 0;
DelayForNextLayout = 120;

choose_layout = true;