/// @description desc
global.iCamera = instance_create_layer(0, 0, layer, oCamera);

global.createEnemys = false;
StopEnemysAppearingAnim = true;
yes = false;

atingiuPlayer = false;

showUI = false;

global.RoomEnemys = instance_number(pEnemy);
delayToCreatePortal = 120;
PortalCreate = false;

NextLayout = false;

LayoutList = ds_list_create();
ds_list_add(LayoutList, layout.l_1);
ds_list_add(LayoutList, layout.l_2);
ds_list_add(LayoutList, layout.l_3);
listValue = noone;

// States
enum layout
{
	ChooseRandom,
	l_1,
	l_2,
	l_3
}
state = layout.ChooseRandom;
delay = 0;
DelayForNextLayout = 120;

choose_layout = true;