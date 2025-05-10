/// @description Loads and applys info during start up

//setup game window
window_set_caption(game_title);					//sets game title from game_info

window_set_min_width(game_width);
window_set_min_height(game_height);

game_setScale(game_default_scale);			//sets default scale
display_reset(0, true);											//resets window to enable vsync
alarm[0] = 1;															//centers screen

//sets game fps from game_info
game_set_speed(game_speed, gamespeed_fps);

//sets game to release mode if debug mode is false
if game_debug = false gml_release_mode(true);

//creates objects for backend
if game_debug = true instance_create_layer(0, 0, "Instances", oDebug);			//checks if debug mode enabled. if so, created oDebug
instance_create_layer(0, 0, "Instances", oGame);														//loads background processes
instance_create_layer(0, 0, "Instances", oCamera);													//loads camera
instance_create_layer(0, 0, "Instances", oGamepad);												//loads gamepad
instance_create_layer(0, 0, "Instances", oTimer);														//loads timer
instance_create_layer(0, 0, "Instances", oLives);														//loads lives system

//sets font and color
draw_set_color(c_white);	//sets text color
draw_set_font(fDefault);	//sets fonts

//checks if directorys exists, if so then create them
if !directory_exists("screenshots") directory_create("screenshots");										//checks if 'screenshots' folder exists, if not then create 'screenshots' folder
if (!directory_exists("mods") and game_debug = true) directory_create("mods");			//checks if 'mods' folder exists, if not then create 'mods' folder

//sets scheduler resolution to 1ms, this helps lower cpu usuage
//scheduler_resolution_set(1)

//randomizes the seed used for generating random numbers
randomise();

//go to main menu
room_goto(rMenu);