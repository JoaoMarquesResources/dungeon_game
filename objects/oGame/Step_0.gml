/// @description desc
show_debug_overlay(true);

global.RoomEnemys = instance_number(pEnemy);

if (global.RoomEnemys == 0 && PortalCreate)
{
	delayToCreatePortal--;
	
	if (delayToCreatePortal == 0)
	{
		instance_create_layer(room_width / 2, room_height / 2, "Enemys", oRoundPortal);
		delayToCreatePortal = 120;
		PortalCreate = false;
	}
}



//PortalCreate = true; QUANDO acabar todos os layouts da ronda



/*
if (CurrentRound == 1)
{
	if (choose_layout)
	{
		random_layout = choose(layout1, layout2);
		script_execute(random_layout);
		NextRound = true;
		choose_layout = false;
	}
	
	if (NextRound && global.RoomEnemys == 0) CurrentRound++;
}
show_debug_message(CurrentRound);
show_debug_message(global.RoomEnemys);
show_debug_message(NextRound);
*/

switch (state)
{
	case layout.ChooseRandom:
		
		LayoutChoosed =	ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
		show_message(LayoutChoosed);
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
				instance_create_layer(32, 48, "Enemys", oNormalEnemy);
				//instance_create_layer(56, 56, "Enemys", oNormalEnemy);
				//instance_create_layer(80, 64, "Enemys", oNormalEnemy);
				//instance_create_layer(104, 56, "Enemys", oNormalEnemy);
				//instance_create_layer(128, 48, "Enemys", oNormalEnemy);
				show_message("CRIOU")
				delay = 30;
				global.createEnemys = false;
			}
			
			if (oEnemysAppearing.changeVariables)
			{
				global.createEnemys = true;
				oEnemysAppearing.changeVariables = false;
			}
		}
		delay--;
		if (delay == 0)
		{
			choose_layout = false;
			StopEnemysAppearingAnim = true;
			NextLayout = true;
		}
		
		if (global.RoomEnemys == 0 && NextLayout)
		{
			DelayForNextLayout--;
			
			if (DelayForNextLayout == 0)
			{
				pos = ds_list_find_index(LayoutList, listValue);
				ds_list_delete(LayoutList, pos); //deleting the pos of this layout
			
				LayoutChoosed =	ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
			
				show_message(string(LayoutChoosed) + "layout.l_1");
			
				choose_layout = true;
				NextLayout = false;
				state = LayoutChoosed;
				show_message("change layout");
				DelayForNextLayout = 120;
			}
		}
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
				show_message("CRIOU")
				delay = 30;
				global.createEnemys = false;
			}
			
			if (oEnemysAppearing.changeVariables)
			{
				global.createEnemys = true;
				oEnemysAppearing.changeVariables = false;
			}
		}
		delay--;
		if (delay == 0)
		{
			choose_layout = false;
			StopEnemysAppearingAnim = true;
			NextLayout = true;
		}
		
		if (global.RoomEnemys == 0 && NextLayout)
		{
			DelayForNextLayout--;
			
			if (DelayForNextLayout == 0)
			{
				pos = ds_list_find_index(LayoutList, listValue);
				ds_list_delete(LayoutList, pos); //deleting the pos of this layout
			
				LayoutChoosed =	ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
			
				show_message(string(LayoutChoosed) + "layout.l_2");
			
				choose_layout = true;
				NextLayout = false;
				state = LayoutChoosed;
				show_message("change layout");
				DelayForNextLayout = 120;
			}
		}
		break;
		
	case layout.l_3:
		listValue = layout.l_3;
	
		if (choose_layout)
		{
			if (StopEnemysAppearingAnim)
			{
				instance_create_layer(24, 56, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(80, 72, "EnemysAppearingAnim", oEnemysAppearing);
				instance_create_layer(136, 56, "EnemysAppearingAnim", oEnemysAppearing);
				StopEnemysAppearingAnim = false;
			}
			
			if (global.createEnemys)
			{
				instance_create_layer(24, 56, "Enemys", oSkeletonEnemy);
				instance_create_layer(80, 72, "Enemys", oSquare);
				instance_create_layer(136, 56, "Enemys", oNormalEnemy);
				show_message("CRIOU")
				delay = 30;
				global.createEnemys = false;
			}
			
			if (oEnemysAppearing.changeVariables)
			{
				global.createEnemys = true;
				oEnemysAppearing.changeVariables = false;
			}
		}
		delay--;
		if (delay == 0)
		{
			choose_layout = false;
			StopEnemysAppearingAnim = true;
			NextLayout = true;
		}
		
		if (global.RoomEnemys == 0 && NextLayout)
		{
			DelayForNextLayout--;
			
			if (DelayForNextLayout == 0)
			{
				pos = ds_list_find_index(LayoutList, listValue);
				ds_list_delete(LayoutList, pos); //deleting the pos of this layout
			
				LayoutChoosed =	ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
			
				show_message(string(LayoutChoosed) + "layout.l_3");
			
				choose_layout = true;
				NextLayout = false;
				state = LayoutChoosed;
				show_message("change layout");
				DelayForNextLayout = 120;
			}
		}
		break;
}
show_debug_message(ds_list_size(LayoutList));
show_debug_message(global.createEnemys);
show_debug_message(StopEnemysAppearingAnim);