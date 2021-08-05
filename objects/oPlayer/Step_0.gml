/// @description desc
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

velh = (right - left) * walkspd;
velv = (down - up) * walkspd;

if (velh != 0) image_xscale = -sign(velh);