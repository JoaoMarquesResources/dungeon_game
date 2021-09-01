/// @description desc

// Inherit the parent event
event_inherited();

image_speed = 0;

velh = 0;
velv = 0;

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);

delay = 60;

bulletsSpeed = 0;
runningSpeed = 2.25;
ReturnToStartPos = false;

goToChaseTimer = 30;

state = "running";

entityFragmentCount = irandom_range(3, 5);

entityDropList = -1;
