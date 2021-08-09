/// @description desc
PixelPerfectCamera()
camera = camera_create();
vm = matrix_build_lookat(0, 0, -10, 0, 0, 0, 0, 1, 0)
pm = matrix_build_projection_ortho(global.gameWidht, global.gameHeight, 1, 3200);

cam = view_camera[0];
follow = oPlayer;
viewWidHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;