/// @description desc
show_debug_overlay(true);
show_debug_message(camera);
global.RoomEnemys = instance_number(pEnemy);

if (room != MenuScreen)
{
	if (ds_list_size(LayoutListRandom) == 0 && PortalCreateHelp = true)
	{
		PortalCreate = true;
		PortalCreateHelp = false; //Tem de resetar no room start
	}
}

if (global.RoomEnemys == 0 && PortalCreate && room != rShop)
{
	delayToCreatePortal--;
	
	if (delayToCreatePortal == 0)
	{
		var chooseChest = choose(oChest, oChest, oChest, oChest, oMimicChest);
		if (camera != 3 && camera != 2 && camera != 5 && room != rShopFinal && room != FINAL)
		{
			instance_create_layer(room_width / 2 - 30, room_height / 2, "Objects", oRoundPortal);
			instance_create_layer(room_width / 2 + 30, room_height / 2, "Objects", oShopPortal);
			instance_create_layer(room_width / 2 + 2, room_height / 2 + 5, "Enemys", chooseChest);
		}
		if (camera == 3)
		{
			instance_create_layer(80, 24, "Objects", oRoundPortal);
			instance_create_layer(80, 64 + 1, "Objects", oShopPortal);
			instance_create_layer(room_width / 2, room_height / 2 + 5, "Enemys", chooseChest);
		}
		if (camera == 2)
		{
			instance_create_layer(room_width / 2 - 26, room_height / 2, "Objects", oRoundPortal);
			instance_create_layer(room_width / 2 + 28, room_height / 2, "Objects", oShopPortal);
			instance_create_layer(room_width / 2 + 3, room_height / 2 + 5, "Enemys", chooseChest);
		}
		if (camera == 5)
		{
			instance_create_layer(room_width / 2, room_height / 2, "Objects", oShopPortal);
		}
		delayToCreatePortal = 60;
		PortalCreate = false;
	}
}
show_debug_message(shop);
//Items Manager
if (room == rShop)
{
	if (CreateLeaf && shop == 1)
	{
		oMagoNPC.myText = ["You can buy what you want!"];
		instance_create_layer(124, 28, "Items", oLeaf);
		CreateLeaf = false;
	}
	
	if (CreateMushroom && shop == 2)
	{
		oMagoNPC.myText = ["Wow you haven't died yet!"];
		if (instance_exists(oLeaf)) instance_destroy(oLeaf);
		instance_create_layer(124, 28, "Items", oMushroom);
		CreateMushroom = false;
	}
	
	if (CreateCookie && shop == 3)
	{
		oMagoNPC.myText = ["Hi again!"];
		if (instance_exists(oLeaf)) instance_destroy(oLeaf);
		if (instance_exists(oMushroom)) instance_destroy(oMushroom);
		instance_create_layer(124, 28, "Items", oCookie);
		CreateCookie = false;
	}
	
	if (CreateEgg && shop == 4)
	{
		oMagoNPC.myText = ["Be careful.", "the next room will be...", "HARD!"];
		if (instance_exists(oLeaf)) instance_destroy(oLeaf);
		if (instance_exists(oMushroom)) instance_destroy(oMushroom);
		if (instance_exists(oCookie)) instance_destroy(oCookie);
		instance_create_layer(124, 28, "Items", oEgg);
		CreateEgg = false;
	}
	
	if (shop == 5)
	{
		instance_destroy(oRoundPortal);
		instance_destroy(oHeart);
		if (ds_list_size(global.ItemsLista) >= 5) {
			oMagoNPC.myText = ["Wow, you defeat him!", "You collected all the itens,", "you brought the recipe,", "and you passed the dungeon!", "Now you need the potion.", "Give me a minute, I will...", "prepare it!"];
		}
		else {
			oMagoNPC.myText = ["Wow, you defeat him!", "But you didn't collect...", "all the itens.", "I think you need to restart!"];
			fail = true;
		}
		if (instance_exists(oLeaf)) instance_destroy(oLeaf);
		if (instance_exists(oMushroom)) instance_destroy(oMushroom);
		if (instance_exists(oCookie)) instance_destroy(oCookie);
		if (instance_exists(oEgg)) instance_destroy(oEgg);
	}
}

switch (state)
{
	case layout.ChooseRandom:
		
		LayoutChoosed =	ds_list_find_value(LayoutListRandom, random(ds_list_size(LayoutListRandom)));
		state = LayoutChoosed;
		
		break;
		
	case layout.l_1:
		listValue = L1;
		
		if (choose_layout)
		{
			if (StopEnemysAppearingAnim)
			{
				instance_create_layer(28, 32, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(80, 68, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(132, 32, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(28, 32, "Enemys", oNormalEnemy);
				instance_create_layer(80, 68, "Enemys", oNormalEnemy);
				instance_create_layer(132, 32, "Enemys", oNormalEnemy);
				delay = 30;
				global.createEnemys = false;
			}
			
			if (instance_exists(oEnemysAppearing))
			{
				if (oEnemysAppearing.changeVariables)
				{
					global.createEnemys = true;
					oEnemysAppearing.changeVariables = false;
				}
			}
		}
		
		SpawnEnemysDelay_ETC();
		
		break;
		
	case layout.l_2:
		listValue = L2;
		
		if (choose_layout)
		{
			if (StopEnemysAppearingAnim)
			{
				instance_create_layer(80, 68, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(80, 68, "Enemys", oSquare);
				delay = 30;
				global.createEnemys = false;
			}
			
			if (instance_exists(oEnemysAppearing))
			{
				if (oEnemysAppearing.changeVariables)
				{
					global.createEnemys = true;
					oEnemysAppearing.changeVariables = false;
				}
			}
		}
		
		SpawnEnemysDelay_ETC();
		
		break;
		
	case layout.l_3:
		listValue = L3;
	
		if (choose_layout)
		{
			if (StopEnemysAppearingAnim)
			{
				instance_create_layer(24, 64, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(132, 64, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(24, 64, "Enemys", oSkeletonEnemy);
				instance_create_layer(132, 64, "Enemys", oSkeletonEnemy);
				delay = 30;
				global.createEnemys = false;
			}
			
			if (instance_exists(oEnemysAppearing))
			{
				if (oEnemysAppearing.changeVariables)
				{
					global.createEnemys = true;
					oEnemysAppearing.changeVariables = false;
				}
			}
		}
		
		SpawnEnemysDelay_ETC();
		
		break;
		
	case layout.l_4:
		listValue = L4;
	
		if (choose_layout)
		{
			if (StopEnemysAppearingAnim)
			{
				instance_create_layer(28, 28, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(28, 48, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(28, 68, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 28, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 48, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 68, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(28, 28, "Enemys", oNormalEnemy);
				instance_create_layer(28, 48, "Enemys", oNormalEnemy);
				instance_create_layer(28, 68, "Enemys", oNormalEnemy);
				instance_create_layer(136, 28, "Enemys", oNormalEnemy);
				instance_create_layer(136, 48, "Enemys", oNormalEnemy);
				instance_create_layer(136, 68, "Enemys", oNormalEnemy);
				delay = 30;
				global.createEnemys = false;
			}
			
			if (instance_exists(oEnemysAppearing))
			{
				if (oEnemysAppearing.changeVariables)
				{
					global.createEnemys = true;
					oEnemysAppearing.changeVariables = false;
				}
			}
		}
		
		SpawnEnemysDelay_ETC();
		
		break;
		
	case layout.l_5:
		listValue = L5;
	
		if (choose_layout)
		{
			if (StopEnemysAppearingAnim)
			{
				instance_create_layer(24, 48, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(80, 68, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 48, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(24, 48, "Enemys", oSkeletonEnemy);
				instance_create_layer(80, 68, "Enemys", oNormalEnemy);
				instance_create_layer(136, 48, "Enemys", oSkeletonEnemy);
				delay = 30;
				global.createEnemys = false;
			}
			
			if (instance_exists(oEnemysAppearing))
			{
				if (oEnemysAppearing.changeVariables)
				{
					global.createEnemys = true;
					oEnemysAppearing.changeVariables = false;
				}
			}
		}
		
		SpawnEnemysDelay_ETC();
		
		break;
		
	case layout.l_6:
		listValue = L6;
	
		if (choose_layout)
		{
			if (StopEnemysAppearingAnim)
			{
				instance_create_layer(28, 48, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(132, 48, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(28, 52, "Enemys", oSquare);
				instance_create_layer(132, 48, "Enemys", oSkeletonEnemy);
				delay = 30;
				global.createEnemys = false;
			}
			
			if (instance_exists(oEnemysAppearing))
			{
				if (oEnemysAppearing.changeVariables)
				{
					global.createEnemys = true;
					oEnemysAppearing.changeVariables = false;
				}
			}
		}
		
		SpawnEnemysDelay_ETC();
		
		break;
}

if (camera == 2)
{
	switch (state)
	{
		case layout.ChooseRandom:
			LayoutChoosed =	ds_list_find_value(LayoutListRandom, random(ds_list_size(LayoutListRandom)));
			state = LayoutChoosed;
		
			break;
		
		case layout.l_7:
			listValue = L7;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(48, 24, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(80, 24, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(112, 24, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(56, 48, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(104, 48, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(48, 68, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(80, 68, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(112, 68, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
			
				if (global.createEnemys)
				{
					instance_create_layer(48, 24, "Enemys", oNormalEnemy);
					instance_create_layer(80, 24, "Enemys", oNormalEnemy);
					instance_create_layer(112, 24, "Enemys", oNormalEnemy);
					instance_create_layer(56, 48, "Enemys", oNormalEnemy);
					instance_create_layer(104, 48, "Enemys", oNormalEnemy);
					instance_create_layer(48, 72, "Enemys", oNormalEnemy);
					instance_create_layer(80, 72, "Enemys", oNormalEnemy);
					instance_create_layer(112, 72, "Enemys", oNormalEnemy);
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_8:
			listValue = L8;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(112, 30, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(48, 64, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
			
				if (global.createEnemys)
				{
					instance_create_layer(112, 40, "Enemys", oFlyEnemy);
					instance_create_layer(48, 72, "Enemys", oFlyEnemy);
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_9:
			listValue = L9;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(80, 32, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(48, 56, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(112, 56, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
			
				if (global.createEnemys)
				{
					instance_create_layer(80, 32, "Enemys", oFastEnemy);
					instance_create_layer(48, 56, "Enemys", oNormalEnemy);
					instance_create_layer(112, 56, "Enemys", oNormalEnemy);
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_10:
			listValue = L10;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(80, 32, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(48, 64, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(112, 64, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
			
				if (global.createEnemys)
				{
					instance_create_layer(80, 32, "Enemys", oSquare);
					instance_create_layer(48, 64, "Enemys", oNormalEnemy);
					instance_create_layer(112, 64, "Enemys", oNormalEnemy);
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_11:
			listValue = L11;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(80, 24, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(48, 48, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(80, 68, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(112, 48, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
			
				if (global.createEnemys)
				{
					instance_create_layer(80, 24, "Enemys", oSkeletonEnemy);
					instance_create_layer(48, 48, "Enemys", oSkeletonEnemy);
					instance_create_layer(80, 72, "Enemys", oSkeletonEnemy);
					instance_create_layer(112, 48, "Enemys", oSkeletonEnemy);
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_12:
			listValue = L12;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(48, 32, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(112, 64, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
			
				if (global.createEnemys)
				{
					instance_create_layer(48, 32, "Enemys", oCruzEnemy);
					instance_create_layer(112, 64, "Enemys", oCruzEnemy);
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
	}
}

if (camera == 3)
{
	switch (state)
	{
		case layout.l_12:
			listValue = L12;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(80, 76, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(64, 64, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(96, 64, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
			
				if (global.createEnemys)
				{
					instance_create_layer(80, 80, "Enemys", oSquare);
					instance_create_layer(64, 64, "Enemys", oCruzEnemy);
					instance_create_layer(96, 64, "Enemys", oCruzEnemy);
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_13:
			listValue = L13;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(80, 24, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(80, 72, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
			
				if (global.createEnemys)
				{
					instance_create_layer(80, 24, "Enemys", oRobotEnemy);
					instance_create_layer(80, 80, "Enemys", oNormalEnemy);
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_14:
			listValue = L14;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(92, 12, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(68, 12, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
				
				if (global.createEnemys)
				{
					var _trap = instance_create_layer(92, 12, "Enemys", oShootTrap);
					var _trap2 = instance_create_layer(68, 12, "Enemys", oShootTrap);
					_trap.image_angle = 90;
					_trap2.image_angle = 90;
					
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_15:
			listValue = L15;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(72, 16, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(88, 76, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
				
				if (global.createEnemys)
				{
					var _trap = instance_create_layer(72, 16, "Enemys", oSkeletonEnemy);
					var _trap2 = instance_create_layer(88, 80, "Enemys", oSkeletonEnemy);
					
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
	}
}

if (camera == 4)
{
	switch (state)
	{	
		case layout.l_16:
			listValue = L16;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(20, 20, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(140, 72, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
				
				if (global.createEnemys)
				{
					instance_create_layer(20, 24, "Enemys", oRobotEnemy);
					instance_create_layer(140, 76, "Enemys", oRobotEnemy);
					
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_17:
			listValue = L17;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(16, 24, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(144, 24, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
				
				if (global.createEnemys)
				{
					instance_create_layer(16, 24, "Enemys", oFastEnemy);
					instance_create_layer(144, 24, "Enemys", oFastEnemy);
					
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_18:
			listValue = L18;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(16, 20, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(28, 46, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(16, 72, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(144, 20, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(132, 46, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(144, 72, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
				
				if (global.createEnemys)
				{
					instance_create_layer(16, 20, "Enemys", oNormalEnemy);
					instance_create_layer(28, 48, "Enemys", oNormalEnemy);
					instance_create_layer(16, 76, "Enemys", oFlyEnemy);
					instance_create_layer(144, 28, "Enemys", oFlyEnemy);
					instance_create_layer(132, 48, "Enemys", oNormalEnemy);
					instance_create_layer(144, 76, "Enemys", oNormalEnemy);
					
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_19:
			listValue = L19;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(32, 32, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(128, 64, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
				
				if (global.createEnemys)
				{
					instance_create_layer(32, 32, "Enemys", oFlySkeleton);
					instance_create_layer(128, 68, "Enemys", oFlySkeleton);
					
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_20:
			listValue = L20;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(20, 48, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(140, 48, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
				
				if (global.createEnemys)
				{
					instance_create_layer(20, 48, "Enemys", oFlySkeleton);
					instance_create_layer(140, 48, "Enemys", oRobotEnemy);
					
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
			
		case layout.l_21:
			listValue = L21;
	
			if (choose_layout)
			{
				if (StopEnemysAppearingAnim)
				{
					instance_create_layer(14, 44, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(148, 44, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
				
				if (global.createEnemys)
				{
					var trap = instance_create_layer(12, 44, "Enemys", oShootTrap);
					trap.image_angle = 180;
					instance_create_layer(144, 44, "Enemys", oShootTrap);
					
					delay = 30;
					global.createEnemys = false;
				}
			
				if (instance_exists(oEnemysAppearing))
				{
					if (oEnemysAppearing.changeVariables)
					{
						global.createEnemys = true;
						oEnemysAppearing.changeVariables = false;
					}
				}
			}
		
			SpawnEnemysDelay_ETC();
		
			break;
	}
}

if (PlayerMorreu) {
	PlayerDelayToDie--;
	
	if (PlayerDelayToDie <= 0) {
		TransitionStart(MenuScreen, seqFadeOut, seqFadeIn);
		PlayerMorreu = false;
		instance_destroy(oGame);
	}
}

if (global.final)
{
	var target = rShopFinal;

	TransitionStart(target, seqFadeOut, seqFadeIn);
	
	//instance_deactivate_object(oPlayer);
	//instance_deactivate_object(oGun);
	
	cenaFinal = true;
	global.final = false;
}

if (cenaFinal)
{
	if (room == rShopFinal) {
		oPlayer.velh = 0;
		oPlayer.velv = 0;
		oPlayer.image_xscale = -1;
		instance_destroy(oGun);
		if (!stopTalking) oMagoNPC.myText = ["I made the potion!", "Now you can leave!"];
		else instance_destroy(oTextBox);
		if (givePotion) {
			instance_create_layer(64, 60, "Items", oPotion);
			givePotion = false;
		}
	}
}