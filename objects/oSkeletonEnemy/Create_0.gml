/// @description desc
state = "normal";
timer = 30;
helpTimer = false;

velh = 0;
velv = 0;

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));