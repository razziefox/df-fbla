/// @description Keyboard Shortcuts + deltatime

/*
At some point deltatime was added but caused issues with both physics and timer
may return at a future date

//delta = delta_time / 1000000
*/

//checks if game is running in browser
if os_browser = browser_not_a_browser {
	
	//if player presses escape, close game
	if keyboard_check(vk_escape) {
	    game_end();
	}

	//if player presses f4 or f11, toggle fullscreen
	if (keyboard_check_pressed(vk_f4) || keyboard_check_pressed(vk_f11)) {
	
		//toggles fullscreen
		window_set_fullscreen(!window_get_fullscreen());
		
		//resets game display with vsync turned off
		display_reset(0, false);
	
	}

	//if player presses f1, save screenshot
	if keyboard_check_pressed(vk_f1) {
		screen_save("screenshots/" + string(round(date_current_datetime())) + string(irandom_range(1, 10000)) + ".png");
	}
	
}