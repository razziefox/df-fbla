//adds a single live to a player
function add_lives(player, amount) {

	//checks which player value is given
	switch (player) {
	
		//if given player value is for player one
		case 1:
		
			//give player one a single live
			oLives.lives_count += amount;
			break;
		
		
		//if given player value is for player two
		case 2:
		
			//gives player two a single live
			oLives.lives_count_2 += amount;
			break;
		
		
		//if player value doesn't match or is not given
		default:
		
			//go to rError
			room_goto(rError);
			break;
	
	}

}

//removes a live from given player
function remove_lives(player, amount) {

	//checks which player value is given
	switch (player) {
	
		//if given player value is for player one
		case 1:
		
			//remove a single live from player one
			oLives.lives_count -= amount;
			break;
		
		
		//if given player value is for player two
		case 2:
		
			//remove a single live from player two
			oLives.lives_count_2 -= amount;
			break;
			
			
		//if player value doesn't match or is not given
		default:
		
			//go to rError
			room_goto(rError);
			break;
	
	}

}

//sets lives for given player
function set_lives(player, amount) {

	//checks which player value is given
	switch (player) {
	
		//if given player value is for player one
		case 1:
		
			//sets lives for player one
			oLives.lives_count = amount;
			break;
		
		
		//if given player value is for player two
		case 2:
		
			//sets lives for player two
			oLives.lives_count_2 = amount;
			break;
		
		
		//if player value doesn't match or is not given
		default:
		
			//go to rError
			room_goto(rError);
			break;
	
	}

}

//checks the amount of lives a player has
function check_lives(player) {
	
	//checks which player value is given
	switch(player) {
		
		//if given player value is for player one
		case 1:
		
			//returns amount of lives remaining for player one
			return oLives.lives_count;
			break;
			
			
		//if given player value is for player one
		case 2:
		
			//returns amount of lives remaining for player two
			return oLives.lives_count_2;
			break;
			
		
		//if player value doesn't match or is not given
		default:
		
			//go to rError
			room_goto(rError);
			break;
	}
}