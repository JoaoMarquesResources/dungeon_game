/// @description desc
state = "normal";

walkspd = 1;

rollspd = 1.40;
rollDelay = 35;
rollDelay2 = 0;
rolling = true;

inputDirection = 0;

velh = 0;
velv = 0;

stopDying = false;

invulnerable = 0;
IsInvulnerable = false;
flash = 0;

global.abrirChest = false;
global.abrirMimicChest = false;

instance_create_layer(x, y - 4, "Gun", oGun);