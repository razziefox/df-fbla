/// @description Checks state

//checks if collected is true
if collected = true {

	//if sFeather_taken isn't set, set as current sprite
	if sprite_index != sFeather_taken sprite_index = sFeather_taken;
	
	//set alarm[0] for set time if alarm[0] is not set
	if alarm[0] < 0	alarm_set(0, cooldown*10);
	

} else {

	//if sFeather isn't set, set as current sprite
	if sprite_index != sFeather sprite_index = sFeather;

	//if player touches feather
	if (place_meeting(x, y, oPlayer)) {

		//sets just-touched object into variable
		var player = instance_place(x, y, oPlayer);
	
		//flaps is not full, collect feather
		if player.flaps != player.max_flaps {
		
			//change feathers state to 'collected'
			collected = true;
			
			//restore flaps count (or jump count)
			player.flaps = player.max_flaps;			
			
			//play soundfx sfxRestored
			play_soundfx(sfxRestored);
		
		}
	}

}