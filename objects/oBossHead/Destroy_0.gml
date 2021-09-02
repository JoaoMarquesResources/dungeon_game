/// @description desc
var _explosion = instance_create_layer(x, y, "Explosion", oExplosion);
ScreenShake(4, 10)
_explosion.image_xscale = 2;
_explosion.image_yscale = 2;

if (entityFragmentCount > 0)
{
	fragmentArray = array_create(entityFragmentCount, entityFragment);
	DropItems(x, y, fragmentArray);
}

if (entityDropList != -1)
{
	DropItems(x, y - sprite_height / 2, entityDropList);
}