/// @description Loads variables

//sets enum for different sprite states
enum drone_state {

	open,
	closed

}

//sets depth to -100, almost on top of everything
depth = -100;

//sets speed for open and closed
spd_open = 4;
spd_closed = 2;

//sets target_y to noone
target_y = noone;

//sets sprites to states
drone[drone_state.open] = sDrone_open;
drone[drone_state.closed] = sDrone_closed;

//sets current player its holding to noone, along with the sprite the player uses
player = noone;
player_sprite = noone;

//sets current state to "closed"
state = drone_state.closed;