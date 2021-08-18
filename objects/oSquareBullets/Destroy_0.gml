/// @description desc
// Inherit the parent event
event_inherited();

for (var i = 0; i <= 360; i += 45)
{
	var _tiro = instance_create_layer(x, y, "Player", oEnemysBullets);
	_tiro.speed = 1.5;
	_tiro.direction = i;
	_tiro.image_angle = i;
}