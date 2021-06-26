/// @description Animations and gameover

//checks if coop from oGame is true
if oGame.coop = true {
	
	//checks if lives_count and live_count_2 are zero or below
	if (lives_count <= 0 and lives_count_2 <= 0) {

		//if oGameover is not created, then create it
		if !instance_exists(oGameover) instance_create_layer(0, 0, "Instances", oGameover);

	}
	
	//if heart_x doesn't equal coop_x, then set it
	if heart_x != coop_x heart_x = coop_x;
	
} else {

	//checks if lives_count are zero or below
	if (lives_count <= 0) {

		//if oGameover is not created, then create it
		if !instance_exists(oGameover) instance_create_layer(0, 0, "Instances", oGameover);

	}
	
	//if heart_x doesn't equal base_x, then set it
	if heart_x != base_x heart_x = base_x;
	
}


//if base_y is not set and oTransition doesn't exist, then play animation

//Player one
if (display_lives = true and base_y != show_y and !instance_exists(oTransition)) then base_y += anim_speed;
if (display_lives = false and base_y != hide_y and !instance_exists(oTransition)) then base_y -= anim_speed;

//Player two
if (display_lives = true and base_y_2 != show_y_2 and !instance_exists(oTransition)) then base_y_2 += anim_speed;
if (display_lives = false and base_y_2 != hide_y_2 and !instance_exists(oTransition)) then base_y_2 -= anim_speed;