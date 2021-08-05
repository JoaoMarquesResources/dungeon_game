/// @description desc
walkspd = 1;
velh = 0;
velv = 0;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

instance_create_layer(x, y - 4, "Gun", oGun);