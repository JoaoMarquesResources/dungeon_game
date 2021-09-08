/// @description desc

// Inherit the parent event
event_inherited();

image_speed = 0;

velh = 0;
velv = 0;

dirTiro = point_direction(x, y, oPlayer.x, oPlayer.y);

delay = 60;
DelayToRunningState = 90;
DelayToHandShoots = 500;
BulletsDelay = 20;
ShootsNumber = 0;
BigBulletsDelay = -1;
TripleBulletsDelay = -1;
WakingUpDelay = 100;

explosionsDelay = 20;
dieDelay = 250;

MultipleShootMiddle = -1;
delay2 = 60;
var360 = 0;
var360_2 = 90;
var360_3 = 180;
var360_4 = 270;

DelayToStartShooting = 90;

bulletsSpeed = 0;
runningSpeed = 2.25;
ReturnToStartPos = false;
CreateParticles = true;

goToChaseTimer = 30;

state = "sleeping";

entityFragmentCount = irandom_range(3, 5);

entityDropList = -1;
