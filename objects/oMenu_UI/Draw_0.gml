/// @description Draws highscore

//checks if save_exist_p1 is true, if so then display highscore
if save_exist_p1 = true and os_browser = browser_not_a_browser {
	
	//displays clock icon for player one
	draw_sprite(sClock_P1, 0, 8, 6);
	
	//displays score for player one
	draw_text_colour(18, 7.5, string(display_hours_p1) + ":" + string(display_minutes_p1) + ":" + string(display_seconds_p1), text_color, text_color, text_color, text_color, 1)

}

//checks if save_exist_p2 is true, if so then display highscore
if save_exist_p2 = true and os_browser = browser_not_a_browser {

	//displays clock icon for player two
	draw_sprite(sClock_P2, 0, 8, 14);
	
	//displays clock icon for player two
	draw_text_colour(18, 15.5, string(display_hours_p2) + ":" + string(display_minutes_p2) + ":" + string(display_seconds_p2), text_color, text_color, text_color, text_color, 1)

}