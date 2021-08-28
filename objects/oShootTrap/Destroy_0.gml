/// @description desc
instance_create_layer(x + 4, y + sprite_height / 2, "Explosion", oExplosion);

if (entityFragmentCount > 0)
{
	fragmentArray = array_create(entityFragmentCount, entityFragment);
	DropItems(x, y, fragmentArray);
}

if (entityDropList != -1)
{
	DropItems(x, y, entityDropList);
}