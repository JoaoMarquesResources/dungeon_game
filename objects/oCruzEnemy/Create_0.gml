/// @description desc

// Inherit the parent event
event_inherited();

velh = 0;
velv = 0;

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);

delay = 60;
delay2 = noone;
delay3 = noone;

bulletsSpeed = 0.9;

goToChaseTimer = 30;

state = "chase";

entityFragmentCount = irandom_range(1, 3);

entityDropList = -1;

//---------------
xTo = xstart;
yTo = ystart;
dir = 0;
enemySpeed = 0.5;