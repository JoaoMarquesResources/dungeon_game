/// @description desc
var knockbak = 5;
if (knockbak != 0 && cena)
{
	var _knockDir = point_direction(oMimicChest.x, oMimicChest.y, x, y);
	velh = lengthdir_x(knockbak, _knockDir);
	velv = lengthdir_y(knockbak, _knockDir);
	cena = false;
}