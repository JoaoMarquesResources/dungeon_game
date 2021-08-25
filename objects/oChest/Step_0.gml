/// @description desc
if (global.abrirChest)
{
	if (entityFragmentCount > 0)
	{
		fragmentArray = array_create(entityFragmentCount, entityFragment);
		DropItems(x, y, fragmentArray);
	}

	if (entityDropList != -1)
	{
		DropItems(x, y, entityDropList);
	}
	image_index = 1;
	global.abrirChest = false;
}

show_debug_message(entityFragmentCount);