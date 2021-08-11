/// @description desc
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
chest = keyboard_check(ord("E"));

velh = (right - left) * walkspd;
velv = (down - up) * walkspd;

if (velh != 0) image_xscale = -sign(velh);

if (chest && place_meeting(x, y, oChest)) global.abrirChest = true;
if (chest && place_meeting(x, y, oMimicChest)) global.abrirMimicChest = true;

if (hp <= 0)
{
	instance_destroy(oGun);
	instance_destroy();
}

show_debug_message(velv)