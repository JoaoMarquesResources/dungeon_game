/// @description desc
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

inputDirection = point_direction(0, 0, right - left, down - up);
inputMagnitude = (right - left != 0) || (down - up != 0); //Always 1 when im running

velh = lengthdir_x(inputMagnitude * walkspd, inputDirection);
//								1 * 2	   , dir = direction
velv = lengthdir_y(inputMagnitude * walkspd, inputDirection);

x += velh;
y += velv;