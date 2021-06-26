/// @description Camera Setup

//enables and creates the camera
view_enabled = true;
view_camera[0] = camera_create();
view_visible[0] = true;

//sets standard camera variables including target
camera_set_view_pos(view_camera[0], 0, 0);
camera_set_view_size(view_camera[0], game_width, game_height);
camera_set_view_speed(view_camera[0],  -1,  -1);
camera_set_view_border(view_camera[0], game_width, game_height);
camera_set_view_target(view_camera[0], oPlayer_One);

//sets width port and height port
view_set_wport(view_camera[0], game_width);
view_set_hport(view_camera[0], game_height);

//sets camera as the main camera and sets it visible
view_set_camera(0, view_camera[0]);
view_set_visible(view_camera[0],  true);