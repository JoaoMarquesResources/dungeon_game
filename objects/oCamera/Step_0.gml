/// @description desc
if (!view_enabled)
{
	view_set_wport(0, global.gameWidth);
	view_set_hport(0, global.gameHeight);
	view_set_visible(0, true);
	camera_set_view_mat(camera, vm);
	camera_set_proj_mat(camera, pm);
	view_camera[0] = camera;
	view_enabled = true;
}

if (window_get_width() != global.gameWidth * global.zoom
&&  window_get_height() != global.gameHeight * global.zoom)
{
	window_set_size(global.gameWidth * global.zoom, global.gameHeight * global.zoom);
	surface_resize(application_surface, global.gameWidth * global.resolution, global.gameHeight * global.resolution);
	display_set_gui_size(global.gameWidth, global.gameHeight);
}

//Keep Camera center inside room;
x = clamp(x, viewWidHalf, room_width - viewWidHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//Screenshake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1 / shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidHalf, y - viewHeightHalf);