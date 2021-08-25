// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnEnemysDelay_ETC()
{
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
			//show_message(listValue);
			//show_message("elemina" + string(pos));
			ds_list_delete(LayoutList, pos); //deleting the pos of this layout
			
			LayoutChoosed =	ds_list_find_value(LayoutList, random(ds_list_size(LayoutList)));
			
			//show_message("Layout choosed" + string(LayoutChoosed));
			
			choose_layout = true;
			NextLayout = false;
			state = LayoutChoosed;
			DelayForNextLayout = 120;
		}
	}
}