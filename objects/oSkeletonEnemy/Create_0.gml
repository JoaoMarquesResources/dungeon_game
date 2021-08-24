/// @description desc

// Inherit the parent event
event_inherited();

entityFragmentCount = irandom_range(0, 2);

state = "chase";
timer = 60;
helpTimer = false;

velh = 0;
velv = 0;

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);

