/// @description desc
global.iCamera = instance_create_layer(0, 0, layer, oCamera);

atingiuPlayer = false;

showUI = false;

global.RoomEnemys = instance_number(pEnemy);
delayToCreatePortal = 120;
PortalCreate = false;

CurrentRound = 1;
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

layout1 = R1_layout_1;
layout2 = R1_layout_2;
random_layout = noone;
choose_layout = true;