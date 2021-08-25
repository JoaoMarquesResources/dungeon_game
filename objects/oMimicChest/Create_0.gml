/// @description desc

// Inherit the parent event
event_inherited();

velh = 0;
velv = 0;

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);

delay = 30;
goToChaseTimer = 30;

state = "normal";

entityFragmentCount = irandom_range(5, 10);

entityDropList = -1;