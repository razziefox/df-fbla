/// @description Timer logic, ported over from PICO-8 and animation code
if running = true and active = true {

	//counts up a millisecond
	milli += 1000/game_speed;
	
	//counts up a second
	if milli > 1000 {
		
		seconds += 1;
		milli = 0;
	
	}
	
	//counts up a minute
	if seconds > 59 {
	
		minutes += 1;
		seconds = 0;
	
	}
	
	//counts up an hour
	if minutes > 59 {
		minutes = 0;
		
		//limits hour from going beyond 99
		if hours < 99 hours += 1;
	}

}


//if display_timer is true and the text cords aren't set, then begin animation for text
if (display_timer = true and base_y != show_y and !instance_exists(oTransition)) then base_y += anim_speed;

//if display_timer is true and the text cords aren't set, then begin animation for text
if (display_timer = false and base_y != hide_y and !instance_exists(oTransition)) then base_y -= anim_speed;