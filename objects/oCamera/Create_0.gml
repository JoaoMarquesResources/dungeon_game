/// @description desc
PixelPerfectCamera()
camera = camera_create();
vm = matrix_build_lookat(0, 0, -10, 0, 0, 0, 0, 1, 0)
pm = matrix_build_projection_ortho(global.gameWidht, global.gameHeight, 1, 3200);