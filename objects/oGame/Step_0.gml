/// @description desc
show_debug_overlay(true);

global.RoomEnemys = instance_number(pEnemy);

if (global.RoomEnemys == 0 && PortalCreate)
{
	delayToCreatePortal--;
	
	if (delayToCreatePortal == 0)
	{
		instance_create_layer(room_width / 2, room_height / 2, "Enemys", oRoundPortal);
		delayToCreatePortal = 60;
		PortalCreate = false;
	}
}

switch (state)
{
	case layout.ChooseRandom:
		
		LayoutChoosed =	ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
		state = LayoutChoosed;
		
		break;
		
	case layout.l_1:
		listValue = layout.l_1;
		
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
		listValue = layout.l_2;
		
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
		listValue = layout.l_3;
	
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
		listValue = layout.l_4;
	
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
		listValue = layout.l_5;
	
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
}

if (ds_list_size(LayoutList) == 0)
{
	PortalCreate = true;
}
show_debug_message(ds_list_size(LayoutList));
show_debug_message(global.createEnemys);
show_debug_message(StopEnemysAppearingAnim);