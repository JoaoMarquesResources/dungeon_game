/// @description desc
randomize();
global.iCamera = instance_create_layer(0, 0, layer, oCamera);
global.Transition = false;

if (room != MenuScreen)
{
	atingiuPlayer = false;
	
	PlayerDelayToDie = 90;
	PlayerMorreu = false;

	showUI = false;

	global.createEnemys = false;
	StopEnemysAppearingAnim = true;

	global.RoomEnemys = instance_number(pEnemy);
	delayToCreatePortal = 60;
	PortalCreate = false;
	PortalCreateHelp = true;

	NextLayout = false;

	fail = false;
	givePotion = false;
	stopTalking = false;
	global.ItemsLista = ds_list_create();
	CreateLeaf = true;
	CreateMushroom = true;
	CreateCookie = true;
	CreateEgg = true;

	global.atingirMimicChest = false;
	global.final = false;
	cenaFinal = false;

	global.PlayerHP = 8;
	global.PlayerHpMax = global.PlayerHP;
	global.playerMoney = 0;

	camera = 0;
	shop = 0;
	Room = Camera1;

	listValue = noone;

	state = layout.ChooseRandom;
	delay = 0;
	DelayForNextLayout = 120;

	choose_layout = true;
}