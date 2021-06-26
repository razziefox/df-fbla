/// @description Set variables

//sets text color
text_color = $5F332B;

//set save file scores as display scores
//player one
display_hours_p1 = 0;
display_minutes_p1 = 0;
display_seconds_p1 = 0;

//player two
display_hours_p2 = 0;
display_minutes_p2 = 0;
display_seconds_p2 = 0;

//variables if a file exists
save_exist_p1 = false;
save_exist_p2 = false

/// @description Loads save.pa

//checks if save_2.pa exists
if file_exists("save_1.pa") {

	//load save.pa
	ini_open("save_1.pa");
	
	//sets save_exist to true (tells the game the save file exists)
	save_exist_p1 = true;
	
	///adds '0' in front of the number if its below '10'
	display_hours_p1 = df_convertTime(ini_read_real("time", "hour", 0));
	display_minutes_p1 = df_convertTime(ini_read_real("time", "minute", 0));
	display_seconds_p1 = df_convertTime(ini_read_real("time", "second", 0));

	//closes ini file
	ini_close();
}

//checks if save_2.pa exists
if file_exists("save_2.pa") {

	//load save_2.pa
	ini_open("save_2.pa");
	
	//sets save_exist to true (tells the game the save file exists)
	save_exist_p2 = true;
	
	///adds '0' in front of the number if its below '10'
	display_hours_p2 = df_convertTime(ini_read_real("time", "hour", 0));
	display_minutes_p2 = df_convertTime(ini_read_real("time", "minute", 0));
	display_seconds_p2 = df_convertTime(ini_read_real("time", "second", 0));

	//closes ini file
	ini_close();
}