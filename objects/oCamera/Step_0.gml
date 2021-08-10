/// @description desc
if (!view_enabled)
{
	view_set_wport(0, global.gameWidht);
	view_set_hport(0, global.gameHeight);
	view_set_visible(0, true);
	camera_set_view_mat(camera, vm);
	camera_set_proj_mat(camera, pm);
	view_camera[0] = camera;
	view_enabled = true;
}

if (window_get_width() != global.gameWidht*global.zoom
&& window_get_height() != global.gameHeight*global.zoom)
{
	window_set_size(global.gameWidht*global.zoom, global.gameHeight*global.zoom);
	surface_resize(application_surface, global.gameWidht*global.resolution, global.gameHeight*global.resolution)
	display_set_gui_size(global.gameWidht, global.gameHeight);
}

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//update object position
x += (xTo - x) / 15; //Seguir de forma smooth
y += (yTo - y) / 15;

//Keep Camera center inside room;
x = clamp(x, viewWidHalf, room_width - viewWidHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//Screenshake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1 / shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidHalf, y - viewHeightHalf);