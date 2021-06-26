/// @description Handling save files

//loads time from oTimer
time[0] = oTimer.hours;				//hour count from oTimer
time[1] = oTimer.minutes;			//minute count from oTimer
time[2] = oTimer.seconds;			//second count from oTimer
time[3] = oTimer.milli;					//milli count from oTimer

//checks if save.pa exists
if file_exists("save_1.pa") and oGame.coop = false {

	//load save.pa
	var save_score = load_scores("save_1.pa");

	//converts the amount of time in this game to milliseconds
	time[3] = time[3] + (time[2]*1000) + (time[1]*60000) + (time[0]*3600000);

	//checks if the new score is smaller
	if save_score > time[3] {
	
		//write new score to save.pa
		save_times("save_1.pa");
	
	}

} else if oGame.coop = false {	//if save.pa doesn't exist
	
	//save scores to save.pa
	save_times("save_1.pa");
	
}


//checks if save_2.pa exists
if file_exists("save_2.pa") and oGame.coop = true {

	//load save.pa
	var save_score = load_scores("save_2.pa");

	//converts the amount of time in this game to milliseconds
	time[3] = time[3] + (time[2]*1000) + (time[1]*60000) + (time[0]*3600000);

	//checks if the new score is smaller
	if save_score > time[3] {
	
		//write new score to save.pa
		save_times("save_2.pa");
	
	}
	

} else if oGame.coop = true  {	//if save.pa doesn't exist but co-op is true
	
	//save scores to save.pa
	save_times("save_2.pa");
}