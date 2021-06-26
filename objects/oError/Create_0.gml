/// @description Loads values and disables objects

//sets animation speed
image_speed = 0.1;	

//play musError music
play_music(musError, true);

//disable both oLives and oTimer
instance_deactivate_object(oLives);
instance_deactivate_object(oTimer);