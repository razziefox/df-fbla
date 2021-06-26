/// @description Drone movement

//checks if the state is not "open" and target_y is bigger then y
if state != drone_state.open and target_y >= y {

	//change state to "open"
	state = drone_state.open;
	
	//create player object
	instance_create_layer(x-2, y+6, "Player", player);

}

//checks if the state is "open"
if state = drone_state.open {

	//go up by y based on spd_open
	y -= spd_open;

} else y -= spd_closed;		//go up by y based on spd_closed

//checks if sprite doesn't match current state, if it doesn't then set correct sprite
if sprite_index != drone[state] sprite_index = drone[state]; 

//checks if 0 is bigger then y, if so then destroy itself
if y < 0 instance_destroy(self);