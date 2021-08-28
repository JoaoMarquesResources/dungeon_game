/// @description desc
show_debug_overlay(true);
global.RoomEnemys = instance_number(pEnemy);

if (ds_list_size(LayoutListRandom) == 0 && PortalCreateHelp = true)
{
	PortalCreate = true;
	PortalCreateHelp = false; //Tem de resetar no room start
}

if (global.RoomEnemys == 0 && PortalCreate && room != rShop)
{
	delayToCreatePortal--;
	
	if (delayToCreatePortal == 0)
	{
		var chooseChest = choose(oChest, oChest, oChest, oChest, oMimicChest);
		if (camera != 3 && camera != 2)
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
		delayToCreatePortal = 60;
		PortalCreate = false;
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
				instance_create_layer(32, 48, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(56, 56, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(80, 64, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(104, 56, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(128, 48, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(32, 48, "Enemys", oSkeletonEnemy);
				instance_create_layer(56, 56, "Enemys", oNormalEnemy);
				instance_create_layer(80, 64, "Enemys", oSkeletonEnemy);
				instance_create_layer(104, 56, "Enemys", oNormalEnemy);
				instance_create_layer(128, 48, "Enemys", oSkeletonEnemy);
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
				instance_create_layer(24, 24, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 24, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(48, 64, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(112, 64, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(24, 24, "Enemys", oNormalEnemy);
				instance_create_layer(136, 24, "Enemys", oNormalEnemy);
				instance_create_layer(48, 64, "Enemys", oSkeletonEnemy);
				instance_create_layer(112, 64, "Enemys", oSkeletonEnemy);
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
				instance_create_layer(24, 56, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(80, 60, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 56, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(24, 56, "Enemys", oSkeletonEnemy);
				instance_create_layer(80, 64, "Enemys", oSquare);
				instance_create_layer(136, 56, "Enemys", oSkeletonEnemy);
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
				instance_create_layer(24, 24, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 24, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 64, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(24, 64, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(24, 24, "Enemys", oSkeletonEnemy);
				instance_create_layer(136, 24, "Enemys", oSkeletonEnemy);
				instance_create_layer(136, 64, "Enemys", oSkeletonEnemy);
				instance_create_layer(24, 64, "Enemys", oSkeletonEnemy);
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
				instance_create_layer(24, 24, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 24, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(80, 64, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 64, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(24, 64, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(24, 24, "Enemys", oNormalEnemy);
				instance_create_layer(136, 24, "Enemys", oNormalEnemy);
				instance_create_layer(80, 72, "Enemys", oSquare);
				instance_create_layer(136, 64, "Enemys", oNormalEnemy);
				instance_create_layer(24, 64, "Enemys", oNormalEnemy);
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
				instance_create_layer(32, 32, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(128, 32, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(128, 64, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(32, 64, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(72, 48, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(88, 48, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(32, 32, "Enemys", oNormalEnemy);
				instance_create_layer(128, 32, "Enemys", oNormalEnemy);
				instance_create_layer(128, 64, "Enemys", oNormalEnemy);
				instance_create_layer(32, 64, "Enemys", oNormalEnemy);
				instance_create_layer(72, 48, "Enemys", oSkeletonEnemy);
				instance_create_layer(88, 48, "Enemys", oSkeletonEnemy);
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
			show_message("choose random");
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
					instance_create_layer(48, 64, "EnemysAppearingAnim", oEnemysAppearing);
					instance_create_layer(112, 64, "EnemysAppearingAnim", oEnemysAppearing);
					StopEnemysAppearingAnim = false;
				}
			
				if (global.createEnemys)
				{
					instance_create_layer(80, 32, "Enemys", oFastEnemy);
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
					instance_create_layer(80, 70, "EnemysAppearingAnim", oEnemysAppearing);
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
		
		default: show_debug_message("state");
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
					instance_create_layer(64, 64, "Enemys", oNormalEnemy);
					instance_create_layer(96, 64, "Enemys", oNormalEnemy);
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
	}
}
show_debug_message("ds size" + string(ds_list_size(LayoutListRandom)));
show_debug_message(global.createEnemys);
show_debug_message(StopEnemysAppearingAnim);
show_debug_message("camera: " + string(camera));