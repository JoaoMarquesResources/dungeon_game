/// @description desc
image_angle += 5;

delay--;

x = lerp(x, oPlayer.x, 0.015);
y = lerp(y, oPlayer.y, 0.015);

if (delay == 0) instance_destroy();