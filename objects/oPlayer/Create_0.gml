/// @description desc
walkspd = 1;
velh = 0;
velv = 0;

invulnerable = 0;
IsInvulnerable = false;
flash = 0;

global.PlayerHP = 5;
global.PlayerHpMax = global.PlayerHP;

global.abrirChest = false;
global.abrirMimicChest = false;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

instance_create_layer(x, y - 4, "Gun", oGun);