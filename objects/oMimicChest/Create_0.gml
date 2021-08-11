/// @description desc
velh = 0;
velv = 0;

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);

delay = 30;
goToChaseTimer = 30;

state = "normal";

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));