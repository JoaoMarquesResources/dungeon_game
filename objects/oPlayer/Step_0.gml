/// @description desc
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
chest = keyboard_check(ord("E"));
roll = mouse_check_button_pressed(mb_right);

invulnerable = max(invulnerable - 1, 0);
flash = max(flash - 0.05, 0);

switch (state)
{
	case "normal":
		sprite_index = sPlayerIdle;
		rollDelay2--;
		
		velh = (right - left) * walkspd;
		velv = (down - up) * walkspd;
		
		if (velv == 0 && velh == 0) rolling = false;
		else rolling = true;

		if (velh != 0) image_xscale = -sign(velh);

		if (chest && place_meeting(x, y, oChest)) global.abrirChest = true;
		if (chest && place_meeting(x, y, oMimicChest)) global.abrirMimicChest = true;
		
		if (roll && rolling && rollDelay2 <= 0 && rolling)
		{
			inputDirection = point_direction(0, 0, right - left, down - up); //Retorna os graus (dir = 0; esq = 180; up = 90; down = 270 etc);
			state = "rolling";
		}
		
		break;
		
	case "rolling":
		rollDelay2 = 15;
		
		velh = lengthdir_x(rollspd, inputDirection);
		velv = lengthdir_y(rollspd, inputDirection);
		
		sprite_index = sPlayerRoll;
		
		rollDelay--;
		
		if (rollDelay == 0)
		{
			state = "normal";
			rollDelay = 20;
		}
		
		break;
}
show_debug_message(image_angle);
show_debug_message(direction);