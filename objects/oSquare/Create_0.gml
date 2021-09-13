/// @description desc
event_inherited();

state = "normal";

velv = 0;
velh = 0;

entityFragmentCount = irandom_range(4, 6);

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y - 2);

delay = 100;
bulletLive = 60;
shoot = false;
bulletId = noone;