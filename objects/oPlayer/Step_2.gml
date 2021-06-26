 /// @description When player loses a live

//if players falls into the bottom part of the screen
if (self.y>room_height+8){
	play_soundfx(sfxHurt);
	
	//removes a life
	remove_lives(gamepad_id, 1);
	
	//checks if lives are either 1 or above
	if check_lives(gamepad_id) >= 1 {
		
		//creates oDrone object
		var drone = instance_create_layer(oGame.respawn_x-2, room_height+40, "Instances", oDrone);
		
		//set player to player variable from oDrone
		drone.player = object_index;
		
		//sets player sprite to player_sprite from oDrone
		drone.player_sprite = sprites[sprite_state.idle];
		
		//sets target_y from oDrone
		drone.target_y = oGame.respawn_y-25;
	
	}
	
	//destroys itself
	instance_destroy(self);
	
	//checks if the amount of players left are either 1 or below
	if instance_number(oPlayer) <= 1 {
		
		//sets button_active from oGame to button_default from oGame
		oGame.button_active = oGame.button_default;
	}
	
}

//checks if lives are below or equal to zero
if check_lives(gamepad_id) <= 0 {
	
	//destroy itself
	instance_destroy(self);
	
}

//If the player enters out of bounds to the right, go to next level
if (self.x > room_width) next_room();