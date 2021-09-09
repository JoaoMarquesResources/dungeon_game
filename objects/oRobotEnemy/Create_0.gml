/// @description desc

// Inherit the parent event
event_inherited();

velh = 0;
velv = 0;

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);

delay = irandom_range(80, 110);
bulletsSpeed = 0;

goToChaseTimer = 30;

state = "chase";

entityFragmentCount = irandom_range(3, 5);

entityDropList = -1;