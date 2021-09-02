/// @description desc
for (var i = 0; i <= 360; i += 25)
{
	var _tiro = instance_create_layer(x, y, "Player", oEnemysBullets);
	_tiro.speed = oBossHead.bulletsSpeed;
	_tiro.direction = i;
	_tiro.image_angle = _tiro.direction;
}