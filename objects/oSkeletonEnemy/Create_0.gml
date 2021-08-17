/// @description desc

// Inherit the parent event
event_inherited();

state = "chase";
timer = 30;
helpTimer = false;

velh = 0;
velv = 0;

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);

