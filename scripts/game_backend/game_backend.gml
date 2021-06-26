// Sets the games scale
function game_setScale(argument0){
	
	//sets game width and height from game_info
	surface_resize(application_surface, game_width*argument0, game_height*argument0);	
	
	//sets window size
	window_set_size(game_width*argument0, game_height*argument0);
	return;

}

