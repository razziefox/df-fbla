//gets current game version
function df_version() {

	//checks what platform delivery flaps is running on
	if os_type = os_linux {
	
		//returns the regular gm_version value
		return GM_version;
	
	} else {
		
		//modifies string to only include three version numbers instead of 4.
		//example: 1.0.0.0 -> 1.0.0
		return string_delete(GM_version, string_length(GM_version)-1, 2);
	
	}

}

//restarts entire game without having to do a hard reset
function df_restart() {

	//resets variables to their default values
	oLives.lives_count = oLives.max_lives;
	oLives.lives_count_2 = oLives.max_lives;
	oGame.coop = false;
	
	//go to rMenu with transition
	goto_room(rMenu);

}

//same as df_restart, but without the transition
function game_reset() {

	//resets variables to their default values
	oLives.lives_count = oLives.max_lives;
	oLives.lives_count_2 = oLives.max_lives;
	oGame.coop = false;
	
	//go to rMenu without transition
	room_goto(rMenu);

}

//go to a room, this includes the transition
function goto_room(rm){
	
	//checks if transition exists
	if !instance_exists(oTransition) {
		
		//create oTransition, this starts the transition
		instance_create_layer(0, 0, "Instances", oTransition);
		
		//if the player exists, pause their movement and sprites
		if instance_exists(oPlayer) oPlayer.pause = true;
		
		//stops timer from running
		oTimer.running = false;
		
		//sets oTransition's past room to current room
		oTransition.past_room = room;
		
		//sets oTransition goal room to rm variable
		oTransition.goal_room = rm;
	}
	
}

//go to the next room in game makers room order
function next_room(){
		
	//checks if oTransition exists
	if !instance_exists(oTransition) {
		
		//creates oTransition
		instance_create_layer(0, 0, "Instances", oTransition);
		
		//if the player exists, pause all movements and animations
		if instance_exists(oPlayer) oPlayer.pause = true;
		
		//stop the timer from running
		oTimer.running = false;
		
		//set past_room for oTransition to the current room
		oTransition.past_room = room;
	}
	
}

//saves current time
function save_times(argument0) {

	//checks if game is running in browser
	if os_browser != browser_not_a_browser return;

	//opens save file
	ini_open(argument0);
	
	//writes hours, minutes, seconds, and milliseconds to save file
	ini_write_real("time", "hour", oTimer.hours);
	ini_write_real("time", "minute", oTimer.minutes);
	ini_write_real("time", "second", oTimer.seconds);
	ini_write_real("time", "millisecond", oTimer.milli);

	//close save file
	ini_close();
	
	return;
	
}

//loads scores from given file
function load_scores(argument0) {

	//checks if game is running in browser
	if os_browser != browser_not_a_browser return;

	//load save.pa
	ini_open(argument0);
	
	//loads all scores from file into an array
	save[0] = ini_read_real("time", "hour", 0);
	save[1] = ini_read_real("time", "minute", 0);
	save[2] = ini_read_real("time", "second", 0);
	save[3] = ini_read_real("time", "millisecond", 0);

	//converts the amount of time in past game to milliseconds
	save[3] = save[3] + (save[2]*1000) + (save[1]*60000) + (save[0]*3600000);

	//returns save score
	return save[3];

}

//checks if a player is touching a block
function check_hug() {

	//checks if coop from oGame is true
	if oGame.coop = true {
	
		// checks if hug_block from both oPlayer_One and oPlayer_Two are false
		if oPlayer_One.hug_block = false and oPlayer_Two.hug_block = false {
		
			//returns true
			return true;
		
		}
	
	
	} else {
	
		//checks if hug_block from oPlayer_One is false
		if oPlayer_One.hug_block = false return true
	
	}

}