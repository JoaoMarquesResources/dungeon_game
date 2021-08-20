/// @description desc
/// @description desc
//Bounce
if (bounceCount != 0)
{
	bounce += (pi * bounceSpeed);
	if (bounce > pi)
	{
		bounce -= pi;
		bounceHeight *= 0.6;
		bounceCount--;
	}
	z = sin(bounce) * bounceHeight;
}
else z = 0;

invulnerable = max(invulnerable - 1, 0);
flash = max(flash - 0.05, 0);

//Deteriorate
deteriorate++;
if (deteriorate == deteriorateAfter)
{
	flash = 0;
	invulnerable = 120;
}

if (alpha)
{
	image_alpha -= 1.4 / deteriorateTime;
	if (image_alpha <= 0) instance_destroy();
}
	
//Friction
fric = 0.05;
if (z == 0) fric = 0.10;
	
//Move
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
if (instance_place(x, y, oWall)) spd = 0;
spd = max(spd - fric, 0);