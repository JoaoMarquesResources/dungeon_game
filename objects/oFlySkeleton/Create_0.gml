/// @description desc

// Inherit the parent event
event_inherited();

velh = 0;
velv = 0;

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);

delay = 60;
bulletsSpeed = 0.2;

goToChaseTimer = 30;

var360 = 0;
var360_2 = 90;
var360_3 = 180;
var360_4 = 270;

state = "chase";

entityFragmentCount = irandom_range(3, 4);

entityDropList = -1;