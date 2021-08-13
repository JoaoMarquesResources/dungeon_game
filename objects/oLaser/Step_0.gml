/// @description desc
x = oGun.x;
y = oGun.y;

dir = point_direction(oGun.x, oGun.y + 1, mouse_x, mouse_y);
direction = dir;

var max_length = 500;
for (var i = 0; i < max_length; i++)
{
	xEnd = x + lengthdir_x(i, direction);
	yEnd = y + lengthdir_y(i, direction);
	
	length_laser = i;
	
	if (collision_point(xEnd, yEnd, oWall, 0, 0))
	{
		part_particles_create(oParticleSetupCreate.particleSystem, xEnd, yEnd, oParticleSetupCreate.particleTypeHit, 1);
		part_particles_create(oParticleSetupCreate.particleSystem, xEnd, yEnd, oParticleSetupCreate.particleTypeSpark, 10);
		
		break;
	}
}